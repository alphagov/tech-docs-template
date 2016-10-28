# Deploying backing services

## Services overview

Your application probably relies on backing services such as a database, an email delivery service or a monitoring system.

In Cloud Foundry, backing services are referred to as 'services' and are available through the Cloud Foundry ``cf marketplace`` command.

Currently, the only service available is the [PostgreSQL database service](#using-a-postgresql-service). 

## Paid services

Some services (including ``postgres``) are considered paid services. Your organization may not have the ability to use paid services enabled. Access to paid services can either be enabled or disabled based on your [organisation quota](#quotas).

If you try to create a service and receive an error stating "service instance cannot be created because paid service plans are not allowed", please contact us at [gov-uk-paas-support@digital.cabinet-office.gov.uk](gov-uk-paas-support@digital.cabinet-office.gov.uk).

## Accessing services

Your app can find out what backing services are available, and obtain credentials for the services, by parsing the VCAP_SERVICES [environment variable](#environment-variables).

## Future services

We are going to add more services in future based on demand, including Elasticsearch and Redis. If you need a particular backing service that we don't yet support, please let us know at [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk).