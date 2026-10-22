# Piano Analytics GTM template for tagging

> This template is meant to be used in combination with [Piano Analytics configuration template](https://github.com/at-internet/gtm-pa-configuration).

## Installation

Add both templates from the Gallery to your Workspace.

![Tag template gallery](res/gallery-tpl-tag.png)

## Setup

### Variable (configuration)

Create a new *Variable* based on the *Piano Analytics - Configuration* template.

![New variable type](res/variable-type.png)

Fill your collection endpoint, site number, [PA SDK source](https://developers.piano.io/analytics/data-collection/sdks/javascript#load-the-library) (up to date CDN file by default) and choose the default consent mode.

![Variable configuration](res/variable-configuration.png)

You can configure your Consent settings ([documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/consent#manage-default-consent-modes)).

![Consent configuration](res/consent-configuration.png)

You can also add any other configuration available with our JS SDK ([documentation](https://developers.piano.io/analytics/data-collection/sdks/javascript#configuration)).

![Other SDK configuration](res/sdk-configurations.png)

### Tag

Create a new *Tag* based on the *Piano Analytics - Tagging* template.

![New tag type](res/tag-type.png)

Make sure you use the previously created Variable as the Configuration for the Tag.

You can now choose the action you need this tag to achieve.

#### Send an event

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/send-events-via-sdks)

Fill the *Event name* and all the properties needed.

![Tag configuration](res/tag-configuration.png)

#### Send multiple events

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/send-events-via-sdks)

For each event to be sent, fill the *Event name* and give a variable with an object of properties to be sent.

![Send multiple events](res/multiple-events.png)

The event properties object can either be a JS Variable, or a custom JS Variable.

![Custom JS Variable](re/../res/custom-js-var.png)

#### eCommerce bridge

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/sales-insights)

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

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/send-events-via-sdks#add-properties-to-events)

You can set properties to subsequent events.

![Set properties](res/set-properties.png)

You can set the type of the property to either a fixed type, or to let the template automatically detect the type (using `JSON.parse` JS method).

![Set property type](res/set-props-type.png)

#### Set a user

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/users)

You can user this action to identify a logged in user.

![Set a user](res/set-a-user.png)

#### Set a Consent mode

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/consent#set-a-consent-mode)

You can set a new Consent mode if the end-user changes its preferences.

![Set consent mode](res/set-consent.png)

#### Set a Privacy mode (deprecated)

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/privacy#set-a-privacy-mode)

You can set a new Privacy mode if the end-user changes its preferences.

![Set privacy mode](res/set-privacy-mode.png)

#### Override the Visitor ID (not recommended)

[Documentation](https://developers.piano.io/analytics/data-collection/how-to-send-events/visitor-identification#visitor-identification-management)

You can override our SDK management of the Visitor ID. This is however not recommended.

![Set a visitor ID](res/set-a-visitorid.png)

## Load the SDK from another domain

The tag template only injects the SDK from `https://tag.aticdn.net/`. Google Tag Manager Gallery templates must declare the exact domains they inject scripts from, and your own domain cannot be listed in the official template.

To load the SDK from your own domain (a [CDDC](https://developers.piano.io/analytics/data-collection/general/collection-methods) subdomain such as `https://nox.yourdomain.com/`, or a self-hosted copy), load it with a dedicated *Custom HTML* tag. Do not edit the permissions of the imported template: an edited template no longer receives Gallery updates.

When *PA SDK source URL* points outside `https://tag.aticdn.net/`, the Piano Analytics tag sets the configuration (`_pac`, `pdl`) and queues its commands without loading the SDK. The SDK runs them once it loads. It reads its configuration when it loads, so it must load **after** the first Piano Analytics tag has fired.

1. Create a *Constant* variable, for example `PA SDK URL`, with your SDK URL (`https://nox.yourdomain.com/piano-analytics.js`).
2. In the *Piano Analytics - Configuration* variable, set *PA SDK source URL* to `{{PA SDK URL}}`.
3. Create a *Custom HTML* tag, for example `PA - SDK loader`, with no trigger:

   ```html
   <script>
     (function (src) {
       if (document.querySelector('script[src="' + src + '"]')) return;
       var script = document.createElement('script');
       script.src = src;
       script.async = true;
       document.head.appendChild(script);
     })('{{PA SDK URL}}');
   </script>
   ```

4. In each Piano Analytics tag, open *Advanced Settings > Tag Sequencing*, check *Fire a tag after this tag fires* and select `PA - SDK loader`. The loader skips injection when the script is already on the page, so it loads the SDK only once.
5. If your site uses a Content Security Policy, add your SDK domain to `script-src`.

Check in GTM Preview mode: the Piano Analytics tag logs that it skips `injectScript`, then `PA - SDK loader` fires and your events are sent to your collection domain.

To get the most out of a first-party setup, host the SDK on the same parent domain as your site (see the [CDDC guide](https://analytics-docs.piano.io/en/analytics/v1/cddc-piano-managed-configuration-guide)).