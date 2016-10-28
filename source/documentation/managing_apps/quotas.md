## Quotas

Cloud Foundry capacity is managed by quotas. Quotas provide a reservation of application routes, memory, compute power, and service instances which your organization cannot exceed. You can set individual application quotas to control how much of your quota each of your applications can use.

### Quota allocations

Your organisation will be assigned a quota based on your stated needs. This will cover the app instances you run. Backing services do not count towards this quota.



+ **RAM**: The amount of RAM available to your applications. The application also has a compute share derived from its memory limit.

+ **Service instances**: The number of service instances available to your organization.

+ **Paid services**: Whether or not paid [services](#deploying-backing-services) are available. ``postgres`` is a paid service.

+ **Routes**: Hostname and domain pairs where an application that exposes a listening port can be reached.

To see your organisation quota, run the command:

``cf org YOURORG``

where YOURORG is your organisation's name. (If you don't know the name, you can use ``cf orgs`` to find out).


### Quota limits

If a new application `push` would exceed your organization's quota, the request will fail with status code `400` and a message describing the limit that would be exceeded.

This is an example of the error you would receive:

```
Creating app APPLICATION in org ORG / space SPACE as USER...
FAILED
Server error, status code: 400, error code: 100007, message: 
You have exceeded the memory limit for your organization's quota.
```

In this situation you have three options:

1. Delete existing resources with `cf delete`, `cf delete-service`, `cf delete-route` or similar commands.
2. Reconfigure existing [application quotas](#application-quotas) and redeploy.
3. Request a quota change: contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk).

### Application quotas

As a PaaS tenant, you can divide your organization's quota capacity amongst your applications as you see fit, by way of application quotas. Application limits are specified in your application manifest or as `cf push` command line options.

Use the following commands to set application quota options (in each pair below, the first is the version to use in the manifest, and the second is the command line version.)

+ `memory:` / `-m`

	Your application's memory limit. An application's compute limit is derived from its memory limit. (see [below](#memory-share-and-compute-share)).

+ `disk_quota:` / `-k`

	The maximum amount of disk space available to your app.

+ `instances:` / `-i`

	Sets the number of application instances to launch. Each additional instance receives the same memory and disk reservation. An application with a manifest specifying `memory: 256M` and `instances: 4` would reserve 1GB (256M x 4) total.

	For a production application, you should always launch at least two instances.

### Memory share and compute share

Your application's compute limit is derived from its memory limit. Each application receives a guaranteed compute share equal to its relative share of memory.

Your application will be guaranteed to receive a portion of the vCPU compute power equal to its portion of memory allocation. In other words, it will receive at least this much vCPU time even if there are other applications competing for time.

Your application will be offered 100% of the vCPU compute power. If no other applications are running, the app can use all the computer power available.
If there are other applications competing for time, each application's guaranteed share determines how much time it will receive.

The application cannot access more than the specified amount of memory.


### Application quota sizing

- The environment default of 512MB `memory` is sufficient for most applications. Static sites and utility applications such as schedulers or loaders may require less. Use `cf app APPNAME` to check your application's current memory and compute utilization.

```
requested state: started
instances: 1/1
usage: 128M x 1 instances
urls: 
last uploaded: Wed Jul 22 20:09:56 UTC 2015

     state     since                    cpu    memory          disk          
#0   running   2015-07-30 05:58:11 PM   0.0%   94.6M of 128M   80.4M of 128M    
```  


- Any application which exceeds its memory quota will be automatically restarted. Use `cf events APPNAME` to look for 'out of memory' crashes.

```
... description   
... index: 0, reason: CRASHED, exit_description: out of memory, exit_status: 255 
```


