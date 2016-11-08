## Deploying a Node.js app

This section covers how to deploy a basic Node.js application to Government PaaS. See the Cloud Foundry [Tips for Node.js Applications](http://docs.cloudfoundry.org/buildpacks/node/node-tips.html) for more details.

Note that the only database service currently supported by PaaS is PostgreSQL. If your Node.js app requires a database, it must be able to work with PostgreSQL.

These instructions assume you have already carried out the setup process explained in the [Quick setup guide](#quick-setup-guide) section.

This is the code for the example app we are going to use. It is a basic web server that responds with a 'Hello World' message.

```js
const http = require('http');

const port = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World\n');
});

server.listen(port, () => {
  console.log("Server running on ${port}");
});
```

1. Save the code to a new local directory as ``example.js``.

1. Add this ``manifest.yml`` file to the same directory:
      
  ```yaml
  ---
  applications:
  - name: my-node-app
    command: node example.js
    memory: 256M
    buildpack: nodejs_buildpack
  ```

  Replace ``my-node-app`` with a unique name for your app. (You can use ``cf apps`` to see apps which already exist).

  The `memory` line tells the PaaS how much memory to allocate to the app.

  A buildpack provides any framework and runtime support required by an app. In this case, because the app is written in Node.js, you use the ``nodejs_buildpack``.

1. Include an npm ``package.json`` file to specify dependencies. The file should also specify a `start` command used to launch the app.
  
  This is a ``package.json`` file for our example app:

  ```json
  {
    "name": "example",
    "version": "0.0.1",
    "author": "Demo",
    "engines": {
      "node": "6.1.0",
      "npm": "2.7.4"
    }
  }
  ```

  The ``engines`` values specify the versions of Node.js and npm that the PaaS should use to run your app. Note that older versions may not be available: if your version is not supported, you will see an error message when you try to upload and start the app.

1. You can optionally run `npm install` to preinstall dependencies rather than having them added during the PaaS staging process.

1. Run `cf push APPNAME` to upload and start the app. If you want to upload 
   the app without starting it (for example, if you need to create a 
   PostgreSQL service), run `cf push --no-start APPNAME`, then when you are 
   ready to start the app, run `cf start APPNAME`.

See [Tips for Node.js Applications](https://docs.cloudfoundry.org/buildpacks/node/node-tips.html) in the Cloud Foundry documentation for more information.

### PostgreSQL setup with Node.js

If your app depends on [backing services](#deploying_services) such as PostgreSQL, it will need to parse the `VCAP_SERVICES` environment variable to get required details, such as service URLs and credentials.

You must create the service and bind it to your Node.js app as described in the [Deploying Services](#deploying_services) section.

You can use the [cfenv](https://www.npmjs.com/package/cfenv) module to assist with parsing the environment variables.

In your ``package.json`` file, you would specify ``cfenv`` as a dependency:

```json
{
  //...
  "dependencies": 
  {
    "cfenv": "*"
  }
}
```

Then in your app, you can easily get configuration information for backing services. This is an example of how to connect to a PostgreSQL service.

```js
var cfenv = require("cfenv");
var pg = require('pg');
var appEnv = cfenv.getAppEnv();
var connectionString = appEnv.getServiceURL(/.*/);
var client = new pg.Client(connectionString);

client.ssl = true;
client.connect();
```

Note that in the above you should replace "my-postgres" with the exact name of the PostgreSQL service you created. The ``getServiceURL`` function returns a connection string which includes the username and password required to connect to the database.

You should also remember to include dependencies for any service bindings in ``package.json``.

```json
{
  //...
  "dependencies": 
  {
    "pg": "*"
  }
}
```

