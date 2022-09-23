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
        "value": "setPrivacyMode",
        "displayValue": "Set Privacy mode"
      },
      {
        "value": "setVisitorId",
        "displayValue": "Override the visitor ID (not recommended)"
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
const createQueue = require('createQueue');

log('GTM Piano Analytics Tag Template - Data =', data);

const confObject = data.configuration;

let _pac = copyFromWindow('_pac') || {privacy: []};
for (var conf in confObject) { _pac[conf] = confObject[conf]; }
let queueVarName = _pac.queueVarName || "_paq";
setInWindow('_pac', _pac, true);

const pixel = {
  init: () => {
    const dataLayerPush = createQueue(queueVarName);
    const commandChoice = data.commandChoice;

    if(commandChoice == "sendEvent") {
      const eventName = data.eventName || "";
      const eventData = makeTableMap(data.eventProps, 'propKey', 'propValue') || {};
      log('GTM Piano Analytics Tag Template - Send event - ', eventName, eventData);
      if(eventName !== "") dataLayerPush(['sendEvent', eventName, eventData]);
    }

    if(commandChoice == "setUser") {
      const userId = data.userId || "";
      const userCategory = data.userCategory || "";
      const storeUser = data.storeUser || true;
      log('GTM Piano Analytics Tag Template - Set user - ', userId, userCategory, storeUser);
      if (userId !== "") dataLayerPush(['setUser', userId, userCategory, storeUser]); 
    }

    if(commandChoice == "setVisitorId") {
      const visitorId = data.visitorId || "";
      log('GTM Piano Analytics Tag Template - Set visitor - ', visitorId);
      if (visitorId !== "") dataLayerPush(['setVisitorId', visitorId]); 
    }
    
    if(commandChoice == "setPrivacyMode") {
      const privacyMode = data.privacyMode || "";
      log('GTM Piano Analytics Tag Template - Set privacy mode - ', privacyMode);
      if (privacyMode !== "") dataLayerPush(['privacy.setMode', privacyMode]);
    }
    
    data.gtmOnSuccess();    
  }
};

injectScript("https://tag.aticdn.net/piano-analytics.js", pixel.init, data.gtmOnFailure, 'pixelPA');


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
                "string": "https://tag.aticdn.net/piano-analytics.js"
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


