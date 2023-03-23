# Piano Analytics GTM template for tagging

> This template is meant to be used in combination with [Piano Analytics configuration template](https://github.com/at-internet/gtm-pa-configuration).

## Installation

Add both templates from the Gallery to your Workspace.

![Tag template gallery](res/gallery-tpl-tag.png)

## Setup

### Variable (configuration)

Create a new *Variable* based on the *Piano Analytics - Configuration* template.

![New variable type](res/variable-type.png)

Fill your collection endpoint, site number, [PA SDK source](https://developers.atinternet-solutions.com/piano-analytics/data-collection/sdks/javascript#load-the-library) (up to date CDN file by default) and choose the default consent mode.

![Variable configuration](res/variable-configuration.png)

You can configure your Consent settings ([documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/consent#manage-default-consent-modes)).

![Consent configuration](res/consent-configuration.png)

You can also add any other configuration available with our JS SDK ([documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/sdks/javascript#configuration)).

![Other SDK configuration](res/sdk-configurations.png)

### Tag

Create a new *Tag* based on the *Piano Analytics - Tagging* template.

![New tag type](res/tag-type.png)

Make sure you use the previously created Variable as the Configuration for the Tag.

You can now choose the action you need this tag to achieve.

#### Send an event

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/send-events-via-sdks)

Fill the *Event name* and all the properties needed.

![Tag configuration](res/tag-configuration.png)

#### Send multiple events

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/send-events-via-sdks)

For each event to be sent, fill the *Event name* and give a variable with an object of properties to be sent.

![Send multiple events](res/multiple-events.png)

The event properties object can either be a JS Variable, or a custom JS Variable.

![Custom JS Variable](re/../res/custom-js-var.png)

#### eCommerce bridge

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/sales-insights)

The template offers a native GA eCommerce bridge, that will automatically transform GA eCommerce tagging to Piano Analytics events and properties.

##### Events mapping

Default events mapping is displayed directly in the tag configuration.

![Default ecommerce events mapping](res/ecommerce-events-mapping.png)

##### Properties mapping

Default properties mapping is displayed directly in the tag configuration.

![Default ecommerce properties mapping](res/ecommerce-props-mapping.png)

You can customize the properties mapping by adding new lines. Each line describes one mapping.

1. The first field expects the Datalayer property name. You can prefix the value with `$$` to give a value instead of a property name.
2. The second field expects the Piano Analytics property to fill with the output.

![Custom ecommerce properties mapping](res/ecommerce-custom-props-mapping.png)

#### Set properties

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/send-events-via-sdks#add-properties-to-events)

You can set properties to subsequent events.

![Set properties](res/set-properties.png)

You can set the type of the property to either a fixed type, or to let the template automatically detect the type (using `JSON.parse` JS method).

![Set property type](res/set-props-type.png)

#### Set a user

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/users)

You can user this action to identify a logged in user.

![Set a user](res/set-a-user.png)

#### Set a Consent mode

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/consent#set-a-consent-mode)

You can set a new Consent mode if the end-user changes its preferences.

![Set consent mode](res/set-consent.png)

#### Set a Privacy mode (deprecated)

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/privacy#set-a-privacy-mode)

You can set a new Privacy mode if the end-user changes its preferences.

![Set privacy mode](res/set-privacy-mode.png)

#### Override the Visitor ID (not recommended)

[Documentation](https://developers.atinternet-solutions.com/piano-analytics/data-collection/how-to-send-events/visitor-identification#visitor-identification-management)

You can override our SDK management of the Visitor ID. This is however not recommended.

![Set a visitor ID](res/set-a-visitorid.png)