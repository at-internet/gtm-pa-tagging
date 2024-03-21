___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Piano Analytics - Tagging",
  "categories": ["ANALYTICS"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "piano",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAABmJLR0QA/wD/AP+gvaeTAAAC/UlEQVRIie2UTWtTQRSG3zPTELxRQdOkYpEuEsUm+IWg4g8QVBQX3ogoIuIHXVRcGIQW5KJUwfq1k6j4A+wPcKFLFRcuXFmprdWkqE0rCE1MYu6c46I2vUmbmCp11Rdmc3jnfe6cc2eAJS1pkUT/GrB198H9bCTFwi4zd719/eRJM/vUv0AdJ2UpUo8AtEPQQaD7ze79a7Bt27qopjoBqnTN52tZvujgeHxXhKCstWtC/Vqpr1qpyR3btxab3d/yN9CevrttxnAbAGyKbXy1KRZN+P3LukG0s9mMBZ/YcVKWNhL11lp8vu0AxSCYWhSwbT/WRhU7AansE0EApA+wcJ6F881mLajV8Xg2YkBWVYBP74MwBMgtJKtp8N6Dp449e/7yDhtGa3hV/5b4+ldgGSdFHYDMgW7cvOdA2ZTvMbPLxu36NPSi6n431WrHSVm54s/bzBxi4VA2O3lRMwrDsXUjzCbvXdN+xxKShwDaAXQIqVRt5h/Btv1YK3+xE95XjoFAwAwOJBLm92kry7ZtPVX0V91vAnjB4Pi27xEIWeFgsF8pmlBaZa2V1oVkMpkHAGHkhKWyovFdEUVirWsP92utviqlsytWLrtUm9vwre7re9BmqLwBcFF2p2uaacJxut/NeHou37riPZCIPHVd19uciVvXe96hRnV/LsdJWYbcqvuqmQqxWNt7b42Z814wzXYYpLiQHtpQ5W8Inp7rZCfEOwriQKA4mEgkjNcrkBwgs67ZJjKX/IMDA9X+huDpuaLqvhpthmfm6pUSVQWe4fpIhq/dnOufka4tHDrefXR0ND2Qznw+nP9RzISCq8YYGL/aez49X0Bre+TI6zeDvUMf0nt+uqXRcGtwpMw8fuN677z+ygfXFgq50g1mCRmWNRPfvl1kVoVYNDxSLyAz9uUMs1nNxgQ/fvxyVmkpZIajdf11wV6JgAN+a85cvTJGShU/wKWAqjvXhmASOgfCJwAZEj6dTJ5o+PCT0BmAxgDJiJGTN+f5D5a0pP+qX9ZXYlzXQAHBAAAAAElFTkSuQmCC"
  },
  "description": "Piano Analytics tag variable. To be used with Piano Analytics configuration template.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "configuration",
    "displayName": "Configuration",
    "macrosInSelect": true,
    "selectItems": [],
    "simpleValueType": true
  },
  {
    "type": "SELECT",
    "name": "commandChoice",
    "displayName": "Choose action",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "sendEvent",
        "displayValue": "Send an event"
      },
      {
        "value": "setUser",
        "displayValue": "Set a user"
      },
      {
        "value": "setConsentMode",
        "displayValue": "Set consent mode"
      },
      {
        "value": "ecommerceMapping",
        "displayValue": "eCommerce bridge"
      },
      {
        "value": "sendEvents",
        "displayValue": "Send multiple events"
      },
      {
        "value": "setProperties",
        "displayValue": "Set properties"
      },
      {
        "value": "setVisitorId",
        "displayValue": "Override the visitor ID (not recommended)"
      },
      {
        "value": "setPrivacyMode",
        "displayValue": "Set Privacy mode (deprecated)"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "GROUP",
    "name": "sendEventGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "eventName",
        "displayName": "Event name",
        "simpleValueType": true
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "eventProps",
        "displayName": "Event props",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "propKey",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "propValue",
            "type": "TEXT"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "sendEvent",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "setPropertiesGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "setPropTable",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Key",
            "name": "setPropKey",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Value",
            "name": "setPropValue",
            "type": "TEXT"
          },
          {
            "defaultValue": "string",
            "displayName": "Type",
            "name": "setPropType",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "auto",
                "displayValue": "Auto"
              },
              {
                "value": "string",
                "displayValue": "string"
              },
              {
                "value": "integer",
                "displayValue": "integer"
              },
              {
                "value": "decimal",
                "displayValue": "decimal"
              },
              {
                "value": "boolean",
                "displayValue": "boolean"
              },
              {
                "value": "date",
                "displayValue": "date"
              },
              {
                "value": "array",
                "displayValue": "array of strings"
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "setPropPersistent",
        "checkboxText": "Persistent?",
        "simpleValueType": true
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "setPropEvents",
        "displayName": "Events scope",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Event name",
            "name": "setPropEvent",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "isUnique": true,
            "valueHint": "Wildcard * available"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "setProperties",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "sendEventsGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "multipleEventsTable",
        "displayName": "Events",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Event name",
            "name": "multipleEventsName",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Event properties object",
            "name": "multipleEventsProps",
            "type": "TEXT"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "sendEvents",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "setUserGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "userId",
        "displayName": "User ID",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "userCategory",
        "displayName": "User category",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "storeUser",
        "checkboxText": "Store user data",
        "simpleValueType": true,
        "defaultValue": true
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "setUser",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "setPrivacyGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "privacyMode",
        "displayName": "Privacy Mode",
        "simpleValueType": true
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "setPrivacyMode",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "setConsentGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "consentMode",
        "displayName": "Consent Mode",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "opt-in",
            "displayValue": "opt-in"
          },
          {
            "value": "essential",
            "displayValue": "essential"
          },
          {
            "value": "opt-out",
            "displayValue": "opt-out"
          }
        ],
        "simpleValueType": true
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "setConsentMode",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "setVisitorGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "visitorId",
        "displayName": "Visitor ID",
        "simpleValueType": true
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "setVisitorId",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "ecommerceGroup",
    "displayName": "",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "ecomEventName",
        "displayName": "Event name",
        "simpleValueType": true,
        "defaultValue": "{{Event}}"
      },
      {
        "type": "GROUP",
        "name": "ecommerceDefaultEventsMappingView",
        "displayName": "Default eCommerce events mapping",
        "groupStyle": "ZIPPY_OPEN",
        "subParams": [
          {
            "type": "LABEL",
            "name": "ecommerceDefaultEventsMapping",
            "displayName": "view_item_list → product.display\u003cbr /\u003e\nview_item → product.page_display\u003cbr /\u003e\nadd_to_cart → product.add_to_cart\u003cbr /\u003e\nremove_from_cart → product.remove_from_cart\u003cbr /\u003e\nview_cart → cart.display → product.display\u003cbr /\u003e\nadd_shipping_info → cart.delivery\u003cbr /\u003e\nadd_payment_info → cart.payment\u003cbr /\u003e\npurchase → transaction.confirmation → product.purchased\u003cbr /\u003e\nview_promotion → publisher.impression\u003cbr /\u003e\nselect_promotion → publisher.click"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecomEventsMapping",
        "displayName": "Customize events mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Incoming event",
            "name": "ecommerceEventInput",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "PA event",
            "name": "ecommerceEventOutput",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Product events associated",
            "name": "ecommerceProductEventsOutput",
            "type": "TEXT",
            "valueHint": "If the event contains products, you can enter the PA product events to map them"
          }
        ]
      },
      {
        "type": "GROUP",
        "name": "ecommerceDefaultPropsMappingView",
        "displayName": "Default eCommerce properties mapping",
        "groupStyle": "ZIPPY_OPEN",
        "subParams": [
          {
            "type": "LABEL",
            "name": "warningCartId",
            "displayName": "\u003cb\u003eBy default, the bridge can\u0027t retrieve any information to fuel \u0027cart_id\u0027 property. This property is mandatory for most of Piano Analytics ecommerce events.\u003cbr /\u003e\nIt is highly recommended to add a mapping for this property.\u003c/b\u003e\u003cbr /\u003e\nWe will however retrieve the \u0027transaction_id\u0027 to use as \u0027cart_id\u0027 if no \u0027cart_id\u0027 has been mapped, even if this is not the recommended way to do it."
          },
          {
            "type": "LABEL",
            "name": "ecommerceDefaultPropsMapping",
            "displayName": "transaction_id → transaction_id\u003cbr /\u003e\nvalue → cart_turnovertaxfree\u003cbr /\u003e\nvalue+tax → cart_turnovertaxincluded\u003cbr /\u003e\nshipping → shipping_costtaxincluded\u003cbr /\u003e\ncurrency+items.currency → cart_currency\u003cbr /\u003e\ncoupon → transaction_promocode\u003cbr /\u003e\ncreative_name → onsitead_variant\u003cbr /\u003e\ncreative_slot → onsitead_category\u003cbr /\u003e\npromotion_id → onsitead_campaign\u003cbr /\u003e\npromotion_name → onsitead_creation\u003cbr /\u003e\nitems.item_id → product_id\u003cbr /\u003e\nitems.item_name → product\u003cbr /\u003e\nitems.coupon → product_discount\u003cbr /\u003e\nitems.discount → product_discount\u003cbr /\u003e\nitems.item_brand → product_brand\u003cbr /\u003e\nitems.item_category → product_category1\u003cbr /\u003e\nitems.item_category2 → product_category2\u003cbr /\u003e\nitems.item_category3 → product_category3\u003cbr /\u003e\nitems.item_category4 → product_category4\u003cbr /\u003e\nitems.item_variant → product_variant\u003cbr /\u003e\nitems.price → product_pricetaxfree\u003cbr /\u003e\nitems.quantity → product_quantity"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "ecomPropsMapping",
        "displayName": "Customize properties mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Incoming property",
            "name": "ecommercePropInput",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "PA property",
            "name": "ecommercePropOutput",
            "type": "TEXT"
          }
        ],
        "help": "Begin with $$ to assign a value instead of a DL property: $${var_name}"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "commandChoice",
        "paramValue": "ecommerceMapping",
        "type": "EQUALS"
      }
    ]
  }
]


___JS_TEMPLATE___

const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const callLater = require('callLater');
const makeTableMap = require('makeTableMap');
const log = require('logToConsole');

log('GTM Piano Analytics Tag Template - Data =', data);

const pixel = {
  init: () => {
    log('GTM Piano Analytics Tag Template - Init');
  }
}

injectScript("https://tag.aticdn.net/piano-analytics.js", pixel.init, data.gtmOnFailure, 'pixelPA');


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const makeTableMap = require('makeTableMap');
const log = require('logToConsole');
const getType = require('getType');
const JSON = require('JSON');
const Object = require('Object');
const createQueue = require('createQueue');
const makeInteger = require('makeInteger');
const makeNumber = require('makeNumber');
const makeString = require('makeString');

const templateVersion = 'pat_24-03.001';

log('GTM Piano Analytics Tag Template - Data =', data);

const confObject = data.configuration;

let _pac = copyFromWindow('_pac') || { privacy: [] };
merge(_pac, confObject);
const queueVarName = _pac.queueVarName || "_paq";

const pdlObject = data.configuration.pdlObject || {};
let windowPdl = copyFromWindow('pdl') || {};
if (JSON.stringify(windowPdl) == '{}') {
  windowPdl = {
    migration: {
      browserId: {
        source: 'PA'
      }
    },
    cookies: {
      storageMode: 'fixed'
    }
  };
}
merge(windowPdl, pdlObject);

Object.delete(_pac, "pdlObject");

setInWindow('_pac', _pac, true);
if (JSON.stringify(windowPdl) !== '{}') setInWindow('pdl', windowPdl, true);

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
      if (JSON.stringify(finalEvents) !== '[]') dataLayerPush(['sendEvents', finalEvents]);
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
        if(prop.setPropValue && prop.setPropKey) {
          setPropObject[propPrefix(prop.setPropKey, prop.setPropType)] = propTypeCast(prop.setPropValue, (prop.setPropType === 'auto'));
        }
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

      if (JSON.stringify(customEventsMapping) !== '{}') {
        for (var eventMapping in customEventsMapping) { eventsMapping[eventMapping] = customEventsMapping[eventMapping]; }
      }
      if (JSON.stringify(customProductsMapping) !== '{}') {
        for (var productMapping in customProductsMapping) { productsMapping[productMapping] = customProductsMapping[productMapping]; }
      }

      const mappedEventname = eventsMapping[data.ecomEventName] || false;
      // fail if no mapping for this event
      if (!mappedEventname) data.gtmOnFailure();
      var isProductEvent = checkVarPrefix(mappedEventname, ['product'], '.');
      var isOnsiteadEvent = checkVarPrefix(mappedEventname, ['publisher','self_promotion'], '.');
      var isAutoItemsEvent = isProductEvent || isOnsiteadEvent;

      const ecommerceDatalayer = retrieveActualPush('key', 'ecommerce');
      
      let ecomPropsWithoutItems = JSON.parse(JSON.stringify(ecommerceDatalayer));
      Object.delete(ecomPropsWithoutItems, "items");

      if (JSON.stringify(customPropsMapping) !== '{}') {
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
        else itemPropsMapping[prop] = propsMapping[prop];
        ecomPropsMapping[prop] = propsMapping[prop];
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
          if (isAutoItemsEvent) productEventname = mappedEventname;
          if (isOnsiteadEvent) {
            for (var mappedProp in ecomPropsMapping) {
              if(checkVarPrefix(ecomPropsMapping[mappedProp], ['onsitead'], '_')) {
                ecommerceDatalayer.items[index][mappedProp] = ecommerceDatalayer[mappedProp];
              }
            }
          }

          if (productEventname !== "") finalEvents.push({ "name": productEventname, "data": mapProperties(ecommerceDatalayer.items[index], itemPropsMapping, constantProps) });
        }
      }
      // automatically calculate "cart_quantity" property
      if (totalQuantity > 0) ecomPropsWithoutItems.cart_quantity = totalQuantity;

      if (!isAutoItemsEvent) {
        finalEvents.push({ "name": mappedEventname, "data": mapProperties(ecomPropsWithoutItems, ecomPropsMapping, constantProps) });
      }

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
        // automatically add "onsitead_type" property if none defined
        if (!element.data.onsitead_type) {
          if(checkVarPrefix(element.name, ['publisher'], '.')) { element.data.onsitead_type = 'Publisher'; }
          if(checkVarPrefix(element.name, ['self_promotion'], '.')) { element.data.onsitead_type = 'Self promotion'; }
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
      if (JSON.stringify(finalEvents !== '[]')) dataLayerPush(['sendEvents', finalEvents]);
    }

    data.gtmOnSuccess();
  }
};

const sdkSrc = confObject.sdkSrc || "https://tag.aticdn.net/piano-analytics.js";
injectScript(sdkSrc, pixel.init, data.gtmOnFailure, 'pixelPA');

function checkVarPrefix(val, prefixes, splitter) {
  const valPrefix = val.split(splitter)[0];
  for (let index = 0; index < prefixes.length; index++) {
    if(prefixes[index] == valPrefix) return true;
  }
  return false;
}

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
    if (JSON.stringify(constantProps) !== '{}') {
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
  "view_promotion": "publisher.impression",
  "select_promotion": "publisher.click",
};

const DEFAULT_ECOMMERCE_PRODUCTS_MAPPING = {
  "transaction.confirmation": "product.purchased",
  "cart.display": "product.display",
  "publisher.impression": "publisher.impression",
  "publisher.click": "publisher.click",
};

const DEFAULT_ECOMMERCE_PROPS_MAPPING = {
  "transaction_id": "transaction_id",
  "value": "cart_turnovertaxincluded",
  "value--tax": "cart_turnovertaxfree",
  "shipping": "shipping_costtaxincluded",
  "currency||items.currency": "cart_currency",
  "coupon": "transaction_promocode",
  "creative_name": "onsitead_variant",
  "creative_slot": "onsitead_category",
  "promotion_id": "onsitead_campaign",
  "promotion_name": "onsitead_creation",
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
  const gtmId = data.gtmEventId;
  const dataLayer = copyFromWindow('dataLayer');
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


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pa"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "PianoAnalytics"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_pac"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_paq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_paqueue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "pdl"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://tag.aticdn.net/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/28/2022, 4:01:38 PM


