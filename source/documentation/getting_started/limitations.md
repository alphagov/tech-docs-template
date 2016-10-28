## Limitations

While the Government PaaS is built using Cloud Foundry technology, we don't support all Cloud Foundry features. This section explains some Cloud Foundry features that are not enabled, as well as some limitations of the beta phase.

### Custom buildpacks are not supported

Cloud Foundry uses buildpacks to provide runtime and framework support for applications in different languages. 

Government PaaS does not support [custom buildpacks](https://docs.cloudfoundry.org/buildpacks/custom.html), only the [standard buildpacks](https://docs.cloudfoundry.org/buildpacks/).

If you want to use a custom buildpack because you need a newer version of a runtime or framework, please note that we update the standard buildpacks on a regular basis (approximately monthly).

If you'd like to use custom buildpacks, please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk).

### Direct SSH access is currently disabled

The Cloud Foundry command line client has an option to enable you to connect directly to the virtual machines on which your apps run using ``cf ssh``. (See the [Cloud Foundry documentation on accessing apps with SSH](https://docs.cloudfoundry.org/devguide/deploy-apps/ssh-apps.html).

This functionality is currently disabled on the Government PaaS. We intend to make it available in future, following security testing.

### 404s after commands that restart the app

After you use a command that restarts application instances, such as ``cf push`` or ``cf restart``, your app may briefly return incorrect 404 errors. Apart from the brief downtime, this may lead to problems if the 404 is cached, or visiting web crawling bots (as used by search engines) receive a 404.

Commands known to do this are:

- ``cf push``
- ``cf restage``
- ``cf restart``
- ``cf scale`` (when changing disk or memory limits or forcing a restart)

We are working on a fix to prevent this happening.

In the meantime, we suggest that you use a [blue-green deployment process](https://docs.cloudfoundry.org/devguide/deploy-apps/blue-green.html), where you have two versions of an app, one that is 'live' and one that is undergoing an update or restart. There are plugins for the Cloud Foundry command line client to facilitate this process. We haven't evaluated the available plugins in enough detail to recommend one, but some tenants have successfully used [autopilot](https://github.com/contraband/autopilot).

### API access may have brief outages during beta

During the beta period, there may be occasional brief periods where API access is unavailable during a platform update, causing commands sent from the command line client to fail. 

If you find that a valid command is failing and the error message does not explain the problem, please wait 5 minutes before trying the command again. If the error persists for more than 5 minutes, it is unlikely to be caused by a platform update and you should contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk).

We are working on a fix to prevent the interruption of API access when we update the platform.


### Deploying Docker images is not currently enabled

Cloud Foundry supports pushing a [Docker](https://www.docker.com/) image as an app. 

This feature is *not* currently enabled on the Government PaaS because allowing deployment from Docker images, where the root filesystem is controlled by the tenant, raises additional security concerns: see [this note from the CF developers](https://github.com/cloudfoundry/diego-design-notes/blob/c59e475020a22e244c6074f89c45b55f7b1e2867/docker-support.md#docker-in-a-multi-tenant-world) for more details.

We may enable support for Docker images in the future. If you would like to be able to push Docker images, please contact our support team at [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk), providing details of your use case.

### Route services are currently disabled

[Cloud Foundry route services](http://docs.cloudfoundry.org/services/route-services.html) are used to apply transformation or processing to requests before they reach an application.

Route services are currently disabled on Government PaaS. If you'd like to discuss your use case for route services and possible workarounds, please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk)
