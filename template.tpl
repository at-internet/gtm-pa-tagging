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
        "name": "consentPurpose",
        "displayName": "Consent Purpose",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "AM",
            "displayValue": "AM (Audience Measurement)"
          },
          {
            "value": "CP",
            "displayValue": "CP (Content personalization and Performance)"
          },
          {
            "value": "AD",
            "displayValue": "AD (Advertising)"
          },
          {
            "value": "PR",
            "displayValue": "PR (Personal Relationship)"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "AM"
      },
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
const queryPermission = require('queryPermission');
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

const templateVersion = 'pat_26-10.001';

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
      const consentPurpose = data.consentPurpose || "AM";
      log('GTM Piano Analytics Tag Template - Set consent mode - ', consentPurpose, consentMode);
      if (consentMode !== "") {
        if(windowPdl.requireConsent == 'v2') dataLayerPush(['consent.setByPurpose', consentPurpose, consentMode]);
        else dataLayerPush(['consent.setMode', consentMode]);
      }
    }

    if (commandChoice == "ecommerceMapping") {
      try {
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
        if (!mappedEventname) {
          data.gtmOnFailure();
          return;
        }
        var isProductEvent = checkVarPrefix(mappedEventname, ['product'], '.');
        var isOnsiteadEvent = checkVarPrefix(mappedEventname, ['publisher','self_promotion'], '.');
        var isAutoItemsEvent = isProductEvent || isOnsiteadEvent;

        const ecommerceDatalayer = retrieveEcommerceDatalayer();
        if (!ecommerceDatalayer || getType(ecommerceDatalayer) !== 'object') {
          log('GTM Piano Analytics Tag Template - eCommerce bridge aborted, ecommerce object not found');
          data.gtmOnFailure();
          return;
        }

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
          if (!element.data.cart_id) {
            if (ecommerceDatalayer.cart_id) {
              element.data.cart_id = ecommerceDatalayer.cart_id;
            } else if (ecommerceDatalayer.transaction_id) {
              element.data.cart_id = ecommerceDatalayer.transaction_id;
            }
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
        if (JSON.stringify(finalEvents) !== '[]') dataLayerPush(['sendEvents', finalEvents]);
      } catch (e) {
        log('GTM Piano Analytics Tag Template - eCommerce bridge error - ', e);
        data.gtmOnFailure();
        return;
      }
    }

    data.gtmOnSuccess();
  }
};

const cdnPrefix = 'https://tag.aticdn.net/';
const sdkSrc = confObject.sdkSrc || cdnPrefix + 'piano-analytics.js';
if (sdkSrc.indexOf(cdnPrefix) === 0) {
  if (queryPermission('inject_script', sdkSrc)) {
    injectScript(sdkSrc, pixel.init, data.gtmOnFailure, 'pixelPA');
  } else {
    log('GTM Piano Analytics Tag Template - Missing inject_script permission for', sdkSrc);
    data.gtmOnFailure();
  }
} else {
  log('GTM Piano Analytics Tag Template - sdkSrc is outside tag.aticdn.net; skipping injectScript. Load the SDK from the page or a Custom HTML tag:', sdkSrc);
  pixel.init();
}

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
  if (JSON.stringify(constantProps) !== '{}') {
    Object.keys(constantProps).forEach(function (key) {
      if (!output.hasOwnProperty(key)) {
        output[key] = constantProps[key];
      }
    });
  }
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

function unwrapDataLayerItem(o) {
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
  return {};
}

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
    let obj = dataLayer.map(unwrapDataLayerItem)
      .filter(o => !!o && String(o['gtm.uniqueEventId']) === String(gtmId));

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

function retrieveEcommerceDatalayer() {
  const currentPush = retrieveActualPush('object') || {};
  if (currentPush.hasOwnProperty('ecommerce')) {
    if (currentPush.ecommerce && getType(currentPush.ecommerce) === 'object') {
      return currentPush.ecommerce;
    }
    // ecommerce present but cleared/invalid on the current push: do not reuse a previous cart
    return;
  }

  const gtmId = data.gtmEventId;
  const eventName = data.ecomEventName;
  const dataLayer = copyFromWindow('dataLayer');
  if (!dataLayer || !gtmId) return;

  let currentIndex = -1;
  for (let i = dataLayer.length - 1; i >= 0; i--) {
    const item = unwrapDataLayerItem(dataLayer[i]);
    if (item && String(item['gtm.uniqueEventId']) === String(gtmId)) {
      currentIndex = i;
      break;
    }
  }
  if (currentIndex < 0) return;

  for (let i = currentIndex - 1; i >= 0; i--) {
    const item = unwrapDataLayerItem(dataLayer[i]);
    if (!item) continue;
    if (item.hasOwnProperty('ecommerce') && item.ecommerce === null) {
      break;
    }
    if (item.ecommerce && getType(item.ecommerce) === 'object') {
      if (!eventName || item.event === eventName) {
        log('GTM Piano Analytics Tag Template - eCommerce object retrieved from previous dataLayer push');
        return item.ecommerce;
      }
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

scenarios:
- name: Skip injectScript for non-CDN sdkSrc
  code: |-
    const mockConfig = {
      collectDomain: 'https://analytics.piano.io',
      site: '123456',
      queueVarName: '_paq',
      sdkSrc: 'https://nox.example.com/piano-analytics.js'
    };

    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });

    let queueCalls = [];
    mock('createQueue', (varName) => {
      return (args) => {
        queueCalls.push({varName: varName, args: args});
      };
    });

    mock('setInWindow', () => {});
    let injectCalled = false;
    mock('injectScript', (src, onSuccess, onFailure) => {
      injectCalled = true;
      onSuccess();
    });

    runCode({
      commandChoice: 'sendEvent',
      eventName: 'page.display',
      eventProps: [
        {propKey: 'page', propValue: 'homepage'}
      ],
      configuration: mockConfig
    });

    assertThat(injectCalled).isEqualTo(false);
    assertThat(queueCalls.length).isEqualTo(1);
    assertThat(queueCalls[0].args[0]).isEqualTo('sendEvent');
    assertThat(queueCalls[0].args[1]).isEqualTo('page.display');

- name: CDN sdkSrc injects piano-analytics.js then runs command
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);

    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    let injectSrc = '';
    mock('injectScript', (src, onSuccess) => {
      injectSrc = src;
      onSuccess();
    });

    runCode({
      commandChoice: 'sendEvent',
      eventName: 'page.display',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(injectSrc).isEqualTo('https://tag.aticdn.net/piano-analytics.js');
    assertThat(queueCalls.length).isEqualTo(1);
    assertThat(queueCalls[0][0]).isEqualTo('sendEvent');
    assertApi('gtmOnSuccess').wasCalled();

- name: Missing sdkSrc defaults to CDN URL
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    mock('createQueue', () => () => {});

    let injectSrc = '';
    mock('injectScript', (src, onSuccess) => {
      injectSrc = src;
      onSuccess();
    });

    runCode({
      commandChoice: 'sendEvent',
      eventName: 'page.display',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456'
      }
    });

    assertThat(injectSrc).isEqualTo('https://tag.aticdn.net/piano-analytics.js');

- name: Denied inject_script permission calls gtmOnFailure
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => false);

    let injectCalled = false;
    mock('injectScript', () => { injectCalled = true; });

    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'sendEvent',
      eventName: 'page.display',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(injectCalled).isEqualTo(false);
    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();

- name: setInWindow writes _pac without pdlObject and merges pdl defaults
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });

    let written = {};
    mock('setInWindow', (key, value) => { written[key] = value; });
    mock('createQueue', () => () => {});
    mock('injectScript', (src, onSuccess) => { onSuccess(); });

    runCode({
      commandChoice: 'sendEvent',
      eventName: 'page.display',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js',
        pdlObject: {
          requireConsent: 'v2',
          consent: { defaultPreset: { PA: 'opt-in' } }
        }
      }
    });

    assertThat(written._pac.pdlObject).isUndefined();
    assertThat(written._pac.collectDomain).isEqualTo('https://analytics.piano.io');
    assertThat(written.pdl.requireConsent).isEqualTo('v2');
    assertThat(written.pdl.migration.browserId.source).isEqualTo('PA');
    assertThat(written.pdl.cookies.storageMode).isEqualTo('fixed');

- name: sendEvent without name succeeds without queue push
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'sendEvent',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnSuccess').wasCalled();

- name: sendEvents parses JSON props and skips rows without name
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'sendEvents',
      multipleEventsTable: [
        {multipleEventsName: 'page.display', multipleEventsProps: '{"page":"home"}'},
        {multipleEventsProps: '{"page":"orphan"}'},
        {multipleEventsName: 'click.navigation', multipleEventsProps: {click: 'nav'}}
      ],
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(1);
    assertThat(queueCalls[0][0]).isEqualTo('sendEvents');
    assertThat(queueCalls[0][1]).isEqualTo([
      {name: 'page.display', data: {page: 'home'}},
      {name: 'click.navigation', data: {click: 'nav'}}
    ]);

- name: sendEvents with empty table does not push sendEvents
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'sendEvents',
      multipleEventsTable: [
        {multipleEventsProps: '{}'}
      ],
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnSuccess').wasCalled();

- name: setUser forwards storeUser false and defaults omitted storeUser to true
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setUser',
      userId: 'u1',
      userCategory: 'vip',
      storeUser: false,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });
    assertThat(queueCalls[0]).isEqualTo(['setUser', 'u1', 'vip', false]);

    queueCalls = [];
    runCode({
      commandChoice: 'setUser',
      userId: 'u2',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });
    assertThat(queueCalls[0]).isEqualTo(['setUser', 'u2', '', true]);

- name: setUser without id does not push
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setUser',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnSuccess').wasCalled();

- name: setVisitorId pushes setVisitorId
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setVisitorId',
      visitorId: 'vid-1',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls[0]).isEqualTo(['setVisitorId', 'vid-1']);

- name: setProperties applies typed prefixes and options
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setProperties',
      setPropTable: [
        {setPropKey: 'page', setPropValue: 'home', setPropType: 'string'},
        {setPropKey: 'count', setPropValue: '3', setPropType: 'integer'},
        {setPropKey: 'ok', setPropValue: 'true', setPropType: 'boolean'},
        {setPropKey: 'day', setPropValue: '2024-01-01', setPropType: 'date'},
        {setPropKey: 'tags', setPropValue: '["a","b"]', setPropType: 'array'},
        {setPropKey: 'autoVal', setPropValue: 'raw', setPropType: 'auto'},
        {setPropKey: 'skip', setPropValue: '', setPropType: 'string'},
        {setPropValue: 'orphan', setPropType: 'string'}
      ],
      setPropPersistent: true,
      setPropEvents: [
        {setPropEvent: 'page.display'},
        {setPropEvent: 'click.*'}
      ],
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls[0][0]).isEqualTo('setProperties');
    assertThat(queueCalls[0][1]).isEqualTo({
      's:page': 'home',
      'n:count': 3,
      'b:ok': true,
      'd:day': '2024-01-01',
      'a:tags': ['a', 'b'],
      autoVal: 'raw'
    });
    assertThat(queueCalls[0][2]).isEqualTo({
      persistent: true,
      events: ['page.display', 'click.*']
    });

- name: setConsentMode uses setByPurpose when requireConsent is v2
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setConsentMode',
      consentPurpose: 'AD',
      consentMode: 'essential',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js',
        pdlObject: { requireConsent: 'v2' }
      }
    });

    assertThat(queueCalls[0]).isEqualTo(['consent.setByPurpose', 'AD', 'essential']);

- name: setConsentMode uses setMode without consent v2
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return { requireConsent: 'v1' };
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setConsentMode',
      consentMode: 'opt-out',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls[0]).isEqualTo(['consent.setMode', 'opt-out']);

- name: setPrivacyMode pushes privacy.setMode
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'setPrivacyMode',
      privacyMode: 'optout',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js'
      }
    });

    assertThat(queueCalls[0]).isEqualTo(['privacy.setMode', 'optout']);

- name: queueVarName _paqueue is used by createQueue
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      return undefined;
    });
    mock('setInWindow', () => {});
    let queueName = '';
    mock('createQueue', (varName) => {
      queueName = varName;
      return () => {};
    });

    runCode({
      commandChoice: 'sendEvent',
      eventName: 'page.display',
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://nox.example.com/pa.js',
        queueVarName: '_paqueue'
      }
    });

    assertThat(queueName).isEqualTo('_paqueue');

- name: eCommerce purchase maps products and cart with transaction_id as cart_id
  code: |-
    const purchase = {
      transaction_id: 'T1',
      value: 12,
      tax: 2,
      currency: 'EUR',
      coupon: 'A,B',
      items: [
        {item_id: 'P1', item_name: 'Widget', price: 10, quantity: 2, item_brand: 'Acme', item_category: 'Cat1'}
      ]
    };

    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [{
          'gtm.uniqueEventId': 42,
          event: 'purchase',
          ecommerce: purchase
        }];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'purchase',
      gtmEventId: 42,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(1);
    assertThat(queueCalls[0][0]).isEqualTo('sendEvents');
    const events = queueCalls[0][1];
    assertThat(events.length).isEqualTo(2);
    assertThat(events[0].name).isEqualTo('product.purchased');
    assertThat(events[0].data.product_id).isEqualTo('P1');
    assertThat(events[0].data.product).isEqualTo('Widget');
    assertThat(events[0].data.product_pricetaxfree).isEqualTo(10);
    assertThat(events[0].data.product_quantity).isEqualTo(2);
    assertThat(events[0].data.cart_id).isEqualTo('T1');
    assertThat(events[0].data.transaction_id).isEqualTo('T1');
    assertThat(events[1].name).isEqualTo('transaction.confirmation');
    assertThat(events[1].data.cart_turnovertaxincluded).isEqualTo(12);
    assertThat(events[1].data.cart_turnovertaxfree).isEqualTo(10);
    assertThat(events[1].data.cart_currency).isEqualTo('EUR');
    assertThat(events[1].data.transaction_promocode).isEqualTo(['A', 'B']);
    assertThat(events[1].data.cart_quantity).isEqualTo(2);
    assertThat(events[1].data.cart_nbdistinctproduct).isEqualTo(1);
    assertThat(events[1].data.cart_id).isEqualTo('T1');
    assertApi('gtmOnSuccess').wasCalled();

- name: eCommerce add_to_cart keeps cart_id without transaction_id
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [{
          'gtm.uniqueEventId': 7,
          event: 'add_to_cart',
          ecommerce: {
            cart_id: 'CART-9',
            items: [{item_id: 'P2', quantity: 1}]
          }
        }];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'add_to_cart',
      gtmEventId: 7,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(queueCalls[0][0]).isEqualTo('sendEvents');
    assertThat(queueCalls[0][1].length).isEqualTo(1);
    assertThat(queueCalls[0][1][0].name).isEqualTo('product.add_to_cart');
    assertThat(queueCalls[0][1][0].data.product_id).isEqualTo('P2');
    assertThat(queueCalls[0][1][0].data.product_quantity).isEqualTo(1);
    assertThat(queueCalls[0][1][0].data.cart_id).isEqualTo('CART-9');

- name: eCommerce constant $$ mapping sets cart_id
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [{
          'gtm.uniqueEventId': 8,
          event: 'view_cart',
          ecommerce: {
            items: [{item_id: 'P3', quantity: 1}]
          }
        }];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'view_cart',
      gtmEventId: 8,
      ecomPropsMapping: [
        {ecommercePropInput: '$$C-FIXED', ecommercePropOutput: 'cart_id'}
      ],
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    const events = queueCalls[0][1];
    assertThat(events[0].name).isEqualTo('product.display');
    assertThat(events[0].data.cart_id).isEqualTo('C-FIXED');
    assertThat(events[1].name).isEqualTo('cart.display');
    assertThat(events[1].data.cart_id).isEqualTo('C-FIXED');

- name: eCommerce SPA recovers ecommerce from previous same-event push
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [
          {
            'gtm.uniqueEventId': 10,
            event: 'purchase',
            ecommerce: {
              transaction_id: 'T-SPA',
              value: 5,
              items: [{item_id: 'P-SPA', quantity: 1}]
            }
          },
          {
            'gtm.uniqueEventId': 11,
            event: 'purchase'
          }
        ];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'purchase',
      gtmEventId: 11,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(1);
    assertThat(queueCalls[0][1][0].data.product_id).isEqualTo('P-SPA');
    assertThat(queueCalls[0][1][0].data.cart_id).isEqualTo('T-SPA');
    assertApi('gtmOnSuccess').wasCalled();

- name: eCommerce null on current push fails without reusing previous cart
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [
          {
            'gtm.uniqueEventId': 20,
            event: 'purchase',
            ecommerce: {
              transaction_id: 'OLD',
              items: [{item_id: 'OLD'}]
            }
          },
          {
            'gtm.uniqueEventId': 21,
            event: 'purchase',
            ecommerce: null
          }
        ];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'purchase',
      gtmEventId: 21,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();

- name: eCommerce unmapped event calls gtmOnFailure
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [{
          'gtm.uniqueEventId': 30,
          event: 'custom_event',
          ecommerce: {items: [{item_id: 'P'}]}
        }];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'custom_event',
      gtmEventId: 30,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();

- name: eCommerce drops events missing mandatory properties but still succeeds
  code: |-
    mock('copyFromWindow', (key) => {
      if (key === '_pac') return { privacy: [] };
      if (key === 'pdl') return {};
      if (key === 'dataLayer') {
        return [{
          'gtm.uniqueEventId': 31,
          event: 'view_item',
          ecommerce: {
            items: [{item_name: 'NoId'}]
          }
        }];
      }
      return undefined;
    });
    mock('setInWindow', () => {});
    mock('queryPermission', () => true);
    let queueCalls = [];
    mock('createQueue', () => (args) => { queueCalls.push(args); });

    runCode({
      commandChoice: 'ecommerceMapping',
      ecomEventName: 'view_item',
      gtmEventId: 31,
      configuration: {
        collectDomain: 'https://analytics.piano.io',
        site: '123456',
        sdkSrc: 'https://tag.aticdn.net/piano-analytics.js'
      }
    });

    assertThat(queueCalls.length).isEqualTo(0);
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();


___NOTES___

Created on 4/28/2022, 4:01:38 PM

