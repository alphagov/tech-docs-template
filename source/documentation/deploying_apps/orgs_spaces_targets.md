## Orgs, spaces and targets

Your tenant account belongs to at least one **organisation** ("org" for short) within the PaaS. This typically represents the real-world organisation or department you work for. Your co-workers' tenant accounts will belong to the same org. 

To list available orgs, run:

``cf orgs``

To see details about an org, run:

``cf org ORGNAME``

where ORGNAME is the name of the org.

Each org is divided into one or more **spaces**, which are used to organise app development, deployment, and maintenance. For example, you could use separate spaces for development and production versions of your app.

To see the spaces in your current org, run:

``cf spaces``

To deploy an app, you need to specify a combination of an organisation and a space: this is called the **target**.

Set the target with:

``cf target -o ORGNAME -s SPACENAME``

Once you set the target, the Cloud Foundry client remembers it until you change it.

See the Cloud Foundry documentation on [Orgs, Spaces, Roles, and Permissions](https://docs.cloudfoundry.org/concepts/roles.html) for more details.