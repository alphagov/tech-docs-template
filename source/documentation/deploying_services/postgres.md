## Using a PostgreSQL service

### Creating a PostgreSQL service

Government PaaS enables you to create a PostgreSQL database service (powered by Amazon Web Services) and bind it to your app. 

In Cloud Foundry, each service may have multiple plans available with different characteristics.

Currently, Government PaaS offers a ``postgres`` service which is available with two separate plans: 

* ``M-dedicated-9.5``
* ``M-HA-dedicated-9.5`` (high availability, recommended for production)

The number in the plan name (in this case, ``9.5``) is the PostgreSQL version.

``postgres`` is considered a paid service. Paid services may not be enabled on your account. If you try to create a service and receive an error stating "service instance cannot be created because paid service plans are not allowed", please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk).


To create a service and bind it to your app:

1. From the command line, run:  

    ``cf marketplace``  

    to see the available services.

    You will see output like this:

    ```
    service     plans                                   description
    postgres    M-dedicated-9.5*, M-HA-dedicated-9.5*   AWS RDS PostgreSQL service
    ```

2.  Run: 

    ``cf marketplace -s postgres``

    to see details of the available plans.

3. Run: 

    ``cf create-service SERVICE PLAN SERVICE_INSTANCE``

    where SERVICE is the service you want, PLAN is the plan you want, and SERVICE_INSTANCE is a unique, descriptive name for this instance of the service; for example:

    ``cf create-service postgres M-dedicated-9.5 my-pg-service``

    Note that for a production service, we strongly recommend you select the high-availability plan (``M-HA-dedicated-9.5``).

    Paid services may need to be enabled on your account; if you receive an error stating "service instance cannot be created because paid service plans are not allowed", please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk).


3. It may take some time (up to 25 minutes) for the service instance to be set up. To find out its status, run:  

    ``cf service SERVICE_INSTANCE``

    for example:

    ``cf service my-pg-service``

4. Wait until the service status reported by the above command is 'create succeeded'. Here is an example of the type of output you will see once the service is created:

    ```
    Service instance: my-pg-service
    Service: postgres
    Bound apps:
    Tags:
    Plan: M-dedicated-9.5
    Description: AWS RDS PostgreSQL service
    Documentation url: https://aws.amazon.com/documentation/rds/
    Dashboard:

    Last Operation
    Status: create succeeded
    Message: DB Instance 'rdsbroker-9f053413-97a5-461f-aa41-fe6e29db323e' status is 'available'
    Started: 2016-08-23T15:34:41Z
    Updated: 2016-08-23T15:42:02Z
    ```

5. You can now bind the PostgreSQL service to your app. Run:
    ``cf bind-service APPLICATION SERVICE_INSTANCE``

    where APPLICATION is the name of a deployed instance of your application (exactly as specified in your manifest or push command), for example:

    ``cf bind-service my-app my-pg-service``

5. Your app is now able to access the PostgreSQL service. If the app was already running, you may need to restart the app to connect.


### Accessing PostgreSQL from your app

Your app must make a [TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security) connection to the PostgreSQL service. Most libraries use TLS by default.

Your app will need to parse the ``VCAP_SERVICES`` [environment variable](#environment-variables) to get details of the PostgreSQL service (or use a library that does so).

(Note that if your app is written in Ruby, the Cloud Foundry Ruby buildpack will automatically parse ``VCAP_SERVICES`` and set DATABASE_URL to the first database found.)

Use ``cf env APPNAME`` to see the environment variables.

You can check for database connection errors by viewing the recent logs with:

``cf logs APPNAME --recent``


### PostgreSQL service maintenance times

The PaaS PostgreSQL service is currently provided by Amazon Web Services RDS. Each PostgreSQL service you create will have a randomly-assigned weekly 30 minute maintenance window, during which there may be brief downtime. (To minimise downtime, select the ``M-HA-dedicated-9.5`` high availability plan). Minor version upgrades (for example from 9.4.1 to 9.4.2) will be applied during this window.

For more details, see the [Amazon RDS Maintenance documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html) [external page].

If you need to know the time of your maintenance window, please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk). Times will be from 22:00 to 06:00 UTC. We will add the ability to set the time of the maintenance window in a future version of Government PaaS.

### PostgreSQL service backup

The data stored within any PostgreSQL service you create is backed up using the standard Amazon RDS backup system. 

Backups are taken nightly and data is retained for 7 days.

If you need to restore data to an earlier state, we can restore to any point from 5 minutes to 7 days ago, with a resolution of one second. Data can be restored to a new PostgreSQL service instance running in parallel, or it can replace the existing service instance.

Please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk) to arrange the restore process or if you need further information about the backup process. We will need approval from your organization manager if restoring will involve overwriting data.

Note that data restore will not be available in the event of an RDS outage affecting the entire Amazon availability zone.

For more details about how the RDS backup system works, see [Amazon's DB Instance Backups documentation](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.BackingUpAndRestoringAmazonRDSInstances.html) [external page].

### High availability details

We recommend you use the high availability plan (``M-HA-dedicated-9.5``) for any production apps.

When you use the high availability plan, Amazon RDS provides a hot standby service to use for failover in the event that the original service fails.

The failover process means that Amazon RDS will automatically change the DNS record of the database instance to point to the standby instance. You should make sure that your app doesn't cache the database IP, and any DNS caching should be configured with a low time to live (TTL). Consult the documentation for the language/framework you are using to find out how to do this.

During failover, there will be an outage period (from tens of seconds to a few minutes). 

See the [Amazon RDS documentation on the failover process](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html#Concepts.MultiAZ.Failover) for more details.

If you wish to test how your app deals with a failover, we can trigger one for you. Please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk) to arrange this.

### Read replicas

Amazon RDS has the capability to provide a read replica: a read-only copy of your PostgreSQL database. This can be useful for performance, availability or security reasons.

See the [Amazon RD documentation on read replicas](https://aws.amazon.com/rds/details/read-replicas/) to learn more.

The Government PaaS doesn't currently support read replicas, but if you think you would find them useful, please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk), providing details of your use case.

