## Environment variables

All the configuration information for your app must be stored as environment variables, not in the code. 

This includes credentials for external services that your app uses, such as a Twitter account, as well as values that will vary with each deployment of the app, like the canonical URL.

To view an app's current environment variables, run:

``cf env APPNAME``

To create or update a variable, use:

``cf set-env APPNAME ENV_VAR_NAME ENV_VAR_VALUE``

If you're deploying a pre-existing app that was written with 12-factor in mind, check the app's documentation for any environment variables you need to set.

If the app has instructions to deploy to Heroku, and tells you to do something like:

``heroku config:set VARIABLE=value``

then you should do the equivalent command with ``cf set-env``:

``cf set-env APPNAME VARIABLE value``

### System-provided environment variables

There are two system-provided environment variables which contain information in JSON format.

* VCAP_SERVICES contains details (including credentials) of any backing services bound to the app
* VCAP_APPLICATION provides details of the currently running application (for example, language runtime version)

To see the values of the system-provided variables, use:

``cf env APPNAME``

If your app connects to a backing service, you may need to have it parse VCAP_SERVICES to get the credentials and other settings relating to that service and set the appropriate environment variables.

However, some buildpacks will do this for you automatically. See the deploy instructions for the language/framework you are using for details.


### Further reading

For more information, see Cloud Foundry's [Cloud Foundry Environment Variables](https://docs.cloudfoundry.org/devguide/deploy-apps/environment-variable.html) documentation.