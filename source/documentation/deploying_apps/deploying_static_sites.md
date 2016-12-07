## Deploying a static site

This section explains how to create and deploy a static HTML page. It's
worth testing that you can carry out this process before you try to deploy a more complex app.

When you deploy an app, you must select a combination of an organisation and a space: this is called the **target** (see [Orgs, spaces and targets](#orgs-spaces-and-targets) for more information).

We have provided a ``sandbox`` space for you to use for learning about the PaaS. You may want to target the sandbox while you are testing by running:

``cf target -s sandbox``

It's also important to realise that if you deploy an app using the same name and target as an existing app, the original will be replaced. If you are not sure about where to deploy your app, consult the rest of your team.

These steps assume you have already carried out the setup process explained in the [Quick setup guide](#quick-setup-guide) section.

1. In an empty directory, create an `index.html` file.

2. Add some markup to the `index.html` file:

    ```html
    <html>
      <head>
        <title>Static Site</title>
      </head>
      <body>
        <p>Welcome to the static site!</p>
      </body>
    </html>
    ```

3. Create a `manifest.yml` file in the same directory. The manifest file tells 
   Cloud Foundry what to do with your app.

    ```yaml
    ---
    applications:
    - name: my-static-site
      memory: 64M
      buildpack: staticfile_buildpack
    ```
    
    Replace ``my-static-site`` with a unique name for your app. (You can use ``cf apps`` to see apps which already exist).

    The `memory` line tells the PaaS how much memory to allocate to the app.

    A buildpack provides any framework and runtime support required by an app. If your app was written in Ruby, you would use ``ruby_buildpack``. In this case, we just want to serve a static file, so we use ``staticfile_buildpack``.

4. From the directory where the `manifest.yml` file is, run:

    ``
    cf push
    ``
    
    If you do not specify an app name with the ``push`` command, the name  specified in the manifest file is used.

The site should now be live at `https://APPNAME.cloudapps.digital`.

**Note:** The `http://` version of the URL will not work. You must enter `https://`.


### Adding more instances

For a production site, you should run at least two instances of the app to ensure availability.

You can add another instance of this static app by running:

``cf scale APPNAME -i 2``

