# Technology

PaaS uses Cloud Foundry and Amazon Web Services (AWS).

### Cloud Foundry

The PaaS platform is built using the open source [Cloud Foundry](https://www.cloudfoundry.org/) project. Multiple open source products were evaluated before Cloud Foundry was selected as the best fit for PaaS.

We chose Cloud Foundry due to its maturity and because it offered:

*   a selection of user permissions
*   support for a wide variety of languages and frameworks through buildpacks
*   a very active community
*   an ability to scale easily, performing well under heavy load

For more information on why we chose Cloud Foundry, [read our blog post](https://governmentasaplatform.blog.gov.uk/2015/12/17/choosing-cloudfoundry/).

Government PaaS addresses common usability, security, compliance and scalability concerns experienced by government development teams. This makes the platform a superior option to your development team deploying their own version of the Cloud Foundry software, where they’d need to address cloud security implications and build a continuous integration pipeline.

### Amazon Web Services

Currently PaaS runs on [Amazon Web Services](https://aws.amazon.com/). As a tenant, you do not have to interact with AWS directly; all interactions required to deploy and manage your service are carried out through Cloud Foundry commands.

The platform may change cloud provider in the future, depending on cost.  Your PaaS interface will always remain the same, no matter which provider is in use. 
