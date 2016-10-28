# Benefits of PaaS

Right now, development teams spend considerable time and money setting up all the components required to host a government service (eg, application monitoring, logging and alerting techniques). With Government PaaS, development teams can save on this effort by using a hosting stack that’s already been developed.

Your development team can use PaaS to deploy and run government applications written in a range of languages and web frameworks. You’ll simply need to push your source code to the PaaS environment and the code will be compiled and deployed for you.

PaaS makes user management easy by providing development teams with privilege separation options, eg an ‘admin’ user will be able to assign other team members certain permissions from their PaaS console.

PaaS is deployed to multiple availability zones, making it resilient and accredited for information up to OFFICIAL.

The platform itself will be supported 24/7 by GDS, although this does not include application support.

Features of the PaaS platform currently include:

*   PostgreSQL and will include database back-ups
*   language support as provided by the [default Cloud Foundry buildpacks](http://docs.cloudfoundry.org/buildpacks/)
*   ability to stream application logs to Software as a Service logging platforms

<h3 class="toc-ignore">Coding in the open</h3>

We are making all new source code open and reusable at PaaS. You can use our source code if you want to prioritise different backing services (any networked attached service that your application consumes to do its job, eg a MongoDB instance or a PostgreSQL database).

<h3 class="toc-ignore">Characteristics of PaaS</h3>

This table summarises the core characteristics of the PaaS offering.

|PaaS characteristic| Meaning|
|:---	|:---	|
| Multi-tenant architecture| Applications running on the platform are isolated from each other and can’t read or change each others’ code, data or logs (eg the Digital Marketplace application can’t access the data of the GOV.UK publishing platform).|
| Application development teams manage their own user support|   A platform where [people developing applications also support the application out of hours](http://www.infoq.com/presentations/gov-uk-devops) leads to better software and a better user experience.	|
|Self-service model|PaaS makes it easy for development teams to get started, and to make frequent changes to their applications without requiring support from a member of the PaaS team (eg they can create a Postgres instance). Because application teams have this complete control, they won’t experience any unnecessary delays. |
|Runs on multiple public clouds|   PaaS isn’t locked into a single provider in order to encourage price competition, and to remove the risk of a [single point of failure](https://www.google.com/url?q=https://en.wikipedia.org/wiki/Single_point_of_failure)	|
