const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const makeTableMap = require('makeTableMap');
const log = require('logToConsole');
const getType = require('getType');
const JSON = require('JSON');
const Object = require('Object');
const createQueue = require('createQueue');
const copyFromDataLayer = require('copyFromDataLayer');
const makeInteger = require('makeInteger');
const makeNumber = require('makeNumber');
const makeString = require('makeString');

const gtmId = copyFromDataLayer('gtm.uniqueEventId');
const dataLayer = copyFromWindow('dataLayer');

log('GTM Piano Analytics Tag Template - Data =', data);

const confObject = data.configuration;
let _pac = copyFromWindow('_pac') || { privacy: [] };
merge(_pac, confObject);
const queueVarName = _pac.queueVarName || "_paq";
setInWindow('_pac', _pac, true);

const pdlObject = data.configuration.pdlObject || {};
const windowPdl = copyFromWindow('pdl') || {};
merge(windowPdl, pdlObject);
if (windowPdl !== {}) setInWindow('pdl', windowPdl, true);

const pixel = {
  init: () => {
    const dataLayerPush = createQueue(queueVarName);
    const commandChoice = data.commandChoice;

    if (commandChoice == "sendEvent") {
      const eventName = data.eventName || "";
      const eventData = (data.eventProps) ? makeTableMap(data.eventProps, 'propKey', 'propValue') : {};
      log('GTM Piano Analytics Tag Template - Send event - ', eventName, eventData);
      if (eventName !== "") dataLayerPush(['sendEvent', eventName, eventData]);
    }

    if (commandChoice == "sendEvents") {
      const events = data.multipleEventsTable || [];
      const finalEvents = events.filter(function(event) {
        if (event.multipleEventsName === undefined) return false;
        return true;
      }).map(function (event) {
        let eventProps = event.multipleEventsProps;
        if (typeof event.multipleEventsProps !== "object") eventProps = JSON.parse(eventProps);
        return { "name": event.multipleEventsName, "data": eventProps };
      });
      log('GTM Piano Analytics Tag Template - Send events - ', finalEvents);
      if (finalEvents !== []) dataLayerPush(['sendEvents', finalEvents]);
    }

    if (commandChoice == "setUser") {
      const userId = data.userId || "";
      const userCategory = data.userCategory || "";
      const storeUser = data.storeUser !== undefined ? data.storeUser : true;
      log('GTM Piano Analytics Tag Template - Set user - ', userId, userCategory, storeUser);
      if (userId !== "") dataLayerPush(['setUser', userId, userCategory, storeUser]);
    }

    if (commandChoice == "setVisitorId") {
      const visitorId = data.visitorId || "";
      log('GTM Piano Analytics Tag Template - Set visitor - ', visitorId);
      if (visitorId !== "") dataLayerPush(['setVisitorId', visitorId]);
    }

    if (commandChoice == "setProperties") {
      const setPropObject = {};
      const setPropOptions = {};
      data.setPropTable && data.setPropTable.map(function (prop) {
        setPropObject[propPrefix(prop.setPropKey, prop.setPropType)] = propTypeCast(prop.setPropValue, !(prop.setPropType === 'auto'));
      });
      setPropOptions.persistent = data.setPropPersistent;
      setPropOptions.events = data.setPropEvents && data.setPropEvents.map(function (event) {
        return event.setPropEvent;
      });
      log('GTM Piano Analytics Tag Template - Set properties - ', setPropObject, setPropOptions);
      if (setPropObject !== "") dataLayerPush(['setProperties', setPropObject, setPropOptions]);
    }

    if (commandChoice == "setPrivacyMode") {
      const privacyMode = data.privacyMode || "";
      log('GTM Piano Analytics Tag Template - Set privacy mode - ', privacyMode);
      if (privacyMode !== "") dataLayerPush(['privacy.setMode', privacyMode]);
    }

    if (commandChoice == "setConsentMode") {
      const consentMode = data.consentMode || "";
      log('GTM Piano Analytics Tag Template - Set consent mode - ', consentMode);
      if (consentMode !== "") dataLayerPush(['consent.setMode', consentMode]);
    }

    if (commandChoice == "ecommerceMapping") {
      let finalEvents = [];
      const customEventsMapping = data.ecomEventsMapping && makeTableMap(data.ecomEventsMapping, 'ecommerceEventInput', 'ecommerceEventOutput');
      const customProductsMapping = data.ecomEventsMapping && makeTableMap(data.ecomEventsMapping, 'ecommerceEventOutput', 'ecommerceProductEventsOutput');
      const customPropsMapping = data.ecomPropsMapping && makeTableMap(data.ecomPropsMapping, 'ecommercePropInput', 'ecommercePropOutput');
      const constantProps = {};
      let eventsMapping = DEFAULT_ECOMMERCE_EVENTS_MAPPING;
      let productsMapping = DEFAULT_ECOMMERCE_PRODUCTS_MAPPING;
      let propsMapping = DEFAULT_ECOMMERCE_PROPS_MAPPING;
      let itemPropsMapping = {};
      let ecomPropsMapping = {};
      let totalQuantity = 0;

      if (customEventsMapping !== {}) {
        for (var eventMapping in customEventsMapping) { eventsMapping[eventMapping] = customEventsMapping[eventMapping]; }
      }
      if (customProductsMapping !== {}) {
        for (var productMapping in customProductsMapping) { productsMapping[productMapping] = customProductsMapping[productMapping]; }
      }

      const mappedEventname = eventsMapping[data.ecomEventName] || false;
      if (!mappedEventname) return;

      const ecommerceDatalayer = retrieveActualPush("key", "ecommerce");

      let ecomPropsWithoutItems = JSON.parse(JSON.stringify(ecommerceDatalayer));
      Object.delete(ecomPropsWithoutItems, "items");

      if (customPropsMapping !== {}) {
        for (var propMapping in customPropsMapping) {
          if (propMapping.substring(0, 2) === '$$') {
            constantProps[customPropsMapping[propMapping]] = propMapping.substring(2);
          } else {
            propsMapping[propMapping] = customPropsMapping[propMapping];
          }
        }
      }

      for (var prop in propsMapping) {
        if (prop.substring(0, 6) === "items.") itemPropsMapping[prop.slice(6)] = propsMapping[prop];
        else ecomPropsMapping[prop] = propsMapping[prop];
      }

      if (ecommerceDatalayer.items) {
        // automatically calculate "cart_nbdistinctproduct" property
        if (ecommerceDatalayer.items.length > 0) ecomPropsWithoutItems.cart_nbdistinctproduct = ecommerceDatalayer.items.length;
        // we expect one event per product
        for (let index = 0; index < ecommerceDatalayer.items.length; index++) {
          if (ecommerceDatalayer.items[index].quantity) totalQuantity += makeInteger(ecommerceDatalayer.items[index].quantity);
          let productEventname = "";
          // producing complementary products events
          for (var productEvent in productsMapping) {
            if (mappedEventname === productEvent) productEventname = productsMapping[productEvent];
          }
          // any "product.xxx" event should inherit from items props
          if (mappedEventname.substring(0, 8) === "product.") productEventname = mappedEventname;

          if (productEventname !== "") finalEvents.push({ "name": productEventname, "data": mapProperties(ecommerceDatalayer.items[index], itemPropsMapping, constantProps) });
        }
      }
      // automatically calculate "cart_quantity" property
      if (totalQuantity > 0) ecomPropsWithoutItems.cart_quantity = totalQuantity;

      if (mappedEventname.substring(0, 8) !== "product.") finalEvents.push({ "name": mappedEventname, "data": mapProperties(ecomPropsWithoutItems, ecomPropsMapping, constantProps) });

      for (let index = finalEvents.length - 1; index >= 0; index--) {
        const element = finalEvents[index];

        // automatically add "cart_id" property if none defined
        if (!element.data.cart_id && ecommerceDatalayer.transaction_id) {
          element.data.cart_id = ecommerceDatalayer.transaction_id;
        }
        // automatically add "transaction_id" property if none defined
        if (!element.data.transaction_id && ecommerceDatalayer.transaction_id) {
          element.data.transaction_id = ecommerceDatalayer.transaction_id;
        }

        let missingMandatoryProps = { error: false, props: [] };
        const mandatoryProps = ECOMMERCE_MANDATORY_PROPERTIES[element.name] || false;
        if (mandatoryProps) {
          for (let index = 0; index < mandatoryProps.length; index++) {
            if (!element.data.hasOwnProperty(mandatoryProps[index])) {
              missingMandatoryProps.error = true;
              missingMandatoryProps.props.push(mandatoryProps[index]);
            }
          }
        }
        if (missingMandatoryProps.error) {
          finalEvents.splice(index, 1);
          log('GTM Piano Analytics Tag Template - Event "' + element.name + '" aborted, mandatory parameter missing: ', missingMandatoryProps.props);
        }
      }

      log('GTM Piano Analytics Tag Template - eCommerce bridge');
      if (finalEvents !== []) dataLayerPush(['sendEvents', finalEvents]);
    }

    data.gtmOnSuccess();
  }
};

const sdkSrc = confObject.sdkSrc || "https://tag.aticdn.net/piano-analytics.js";
injectScript(sdkSrc, pixel.init, data.gtmOnFailure, 'pixelPA');

function mapProperties(input, mapping, constantProps) {
  let output = JSON.parse(JSON.stringify(input));
  Object.keys(output).forEach(function (key) {
    if (mapping.hasOwnProperty(key) && key !== mapping[key]) {
      let outputValue = output[key];
      switch (mapping[key]) {
        case "transaction_promocode":
          if (getType(outputValue) !== "array") outputValue = outputValue.split(",");
          break;

        case "product_discount":
          if (getType(outputValue) !== "boolean") outputValue = true;
          break;

        case "transaction_id":
        case "product_id":
        case "cart_id":
        case "product":
        case "product_id":
        case "product_brand":
        case "product_category1":
        case "product_category2":
        case "product_category3":
        case "product_category4":
        case "product_variant":
        case "cart_currency":
          outputValue = makeString(outputValue) || outputValue;
          break;

        case "product_pricetaxincluded":
        case "product_pricetaxfree":
        case "cart_turnovertaxincluded":
        case "cart_turnovertaxfree":
        case "shipping_costtaxincluded":
        case "shipping_costtaxfree":
        case "product_quantity":
        case "cart_quantity":
        case "cart_creation_utc":
        case "cart_nbdistinctproduct":
          outputValue = makeNumber(outputValue) || outputValue;
          break;

        default:
          break;
      }

      output[mapping[key]] = outputValue;
      Object.delete(output, key);
    }
    if (constantProps !== {}) {
      Object.keys(constantProps).forEach(function (key) {
        output[key] = constantProps[key];
      });
    }
  });
  Object.keys(mapping).forEach(function (key) {
    if (key.indexOf("+") !== -1) {
      let multipleProps;
      if (key.indexOf("++") !== -1) {
        multipleProps = key.split("++");
      } else {
        // needed for backward compatibility
        multipleProps = key.split("+");
      }
      output[mapping[key]] = input[multipleProps[0]];
      for (let i = 1; i < multipleProps.length; i++) {
        output[mapping[key]] = output[mapping[key]] + input[multipleProps[i]];
      }
    }
    if (key.indexOf("--") !== -1) {
      const multipleProps = key.split("--");
      output[mapping[key]] = input[multipleProps[0]];
      for (let i = 1; i < multipleProps.length; i++) {
        output[mapping[key]] = output[mapping[key]] - input[multipleProps[i]];
      }
    }
    if (key.indexOf("||") !== -1) {
      const multipleProps = key.split("||");
      for (let i = 0; i < multipleProps.length; i++) {
        if (input[multipleProps[i]]) {
          output[mapping[key]] = input[multipleProps[i]];
          break;
        }
      }
    }
  });
  return output;
}

const DEFAULT_ECOMMERCE_EVENTS_MAPPING = {
  "view_item_list": "product.display",
  "view_item": "product.page_display",
  "add_to_cart": "product.add_to_cart",
  "remove_from_cart": "product.remove_from_cart",
  "view_cart": "cart.display",
  "add_shipping_info": "cart.delivery",
  "add_payment_info": "cart.payment",
  "purchase": "transaction.confirmation",
};

const DEFAULT_ECOMMERCE_PRODUCTS_MAPPING = {
  "transaction.confirmation": "product.purchased",
  "cart.display": "product.display",
};

const DEFAULT_ECOMMERCE_PROPS_MAPPING = {
  "transaction_id": "transaction_id",
  "value": "cart_turnovertaxincluded",
  "value--tax": "cart_turnovertaxfree",
  "shipping": "shipping_costtaxincluded",
  "currency||items.currency": "cart_currency",
  "coupon": "transaction_promocode",
  "items.item_id": "product_id",
  "items.item_name": "product",
  "items.coupon": "product_discount",
  "items.discount": "product_discount",
  "items.item_brand": "product_brand",
  "items.item_category": "product_category1",
  "items.item_category2": "product_category2",
  "items.item_category3": "product_category3",
  "items.item_category4": "product_category4",
  "items.item_variant": "product_variant",
  "items.price": "product_pricetaxfree",
  "items.quantity": "product_quantity",
};

const ECOMMERCE_MANDATORY_PROPERTIES = {
  "product.display": ["product_id"],
  "product.page_display": ["product_id"],
  "product.add_to_cart": ["product_id"],
  "product.remove_from_cart": ["product_id"],
  "cart.creation": ["cart_id"],
  "cart.display": ["cart_id"],
  "cart.update": ["cart_id"],
  "cart.delivery": ["cart_id"],
  "cart.payment": ["cart_id"],
  "transaction.confirmation": ["cart_id", "transaction_id"],
  "product.purchased": ["cart_id", "product_id", "transaction_id"],
};

// Use https://github.com/gtm-templates-simo-ahava/data-layer-picker to retrieve actually pushed DL values
function retrieveActualPush(type, value) {
  const dataType = type || "object";
  const dataValue = value || "";
  const get = (obj, path, def) => {
    path = path.split('.');
    let current = obj;

    for (let i = 0; i < path.length; i++) {
      if (!current[path[i]]) return def;
      current = current[path[i]];
    }
    return current;
  };

  if (dataLayer && gtmId) {
    // Get object from dataLayer that matches the gtm.uniqueEventId
    let obj = dataLayer.map(o => {
      // If falsy (due to e.g. sandbox API suppressing the object), return empty object
      if (!o) return {};

      // If a regular dataLayer object, return it
      if (o['gtm.uniqueEventId']) return o;

      // Otherwise assume it's a template constructor-based object
      // Clone the object to remove constructor, then return first
      // property in the object (the wrapper)
      o = JSON.parse(JSON.stringify(o));
      for (let prop in o) {
        return o[prop];
      }
      // Filter to only include the item(s) where the event ID matches
    }).filter(o => !!o && o['gtm.uniqueEventId'] === gtmId);

    // Get the first item from the matches
    obj = obj.length ? obj[0] : {};
    switch (dataType) {
      case 'object':
        return obj;
      case 'key':
        return get(obj, dataValue, obj[dataValue]);
    }
  }
}

function merge(a, b) {
  for (var key in b) { a[key] = b[key]; }
}

function propTypeCast(data, force) {
  if (force) return data;
  var testNumber = makeNumber(data);
  var isNaN = (testNumber !== testNumber);
  if (
    data == 'true' ||
    data == 'false' ||
    !isNaN ||
    (data.indexOf('[') == 0 && data.slice(-1) == ']') ||
    (data.indexOf('{') == 0 && data.slice(-1) == '}')
  ) {
    return JSON.parse(data);
  }
  return JSON.parse("\"" + data + "\"");
}

function propPrefix(key, type) {
  const prefix = {
    'string': 's:',
    'integer': 'n:',
    'float': 'f:',
    'date': 'd:',
    'boolean': 'b:',
    'array': 'a:',
  };
  if (prefix[type]) return prefix[type] + '' + key;
  return key;
}