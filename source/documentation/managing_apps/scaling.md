# Managing apps

## Scaling apps

The Cloud Foundry technology makes it easy to scale your application to meet increasing demand. Scaling does not happen automatically; you have to use the commands described below.

Note that the maximum resources you can use will be limited by your organization quotas. You can view them by running:

``cf quotas``

from the command line.

If you are anticipating a spike in demand for a service hosted on the Government PaaS, please contact us well in advance at <gov-uk-paas-support@digital.cabinet-office.gov.uk>.

### Increasing instances

You can change the number of instances of your app running in parallel.
Incoming requests are automatically load-balanced across all instances.

For example, this command sets the number of running instances to five:

``cf scale APPNAME -i 5``

For a production app, you should always have at least two running instances.

### Increasing memory and disk space

You can scale an application vertically by increasing the memory or disk space available to each instance of the app.

For example, this command increases the available memory for an app to 1 gigabyte:

``cf scale APPNAME -m 1G``

This command increases the disc space limit for an app to 512 megabytes:

``cf scale myApp -k 512M``


### More about scaling

For more details, see [Scaling an Application Using cf scale](http://docs.cloudfoundry.org/devguide/deploy-apps/cf-scale.html) in the Cloud Foundry docs.