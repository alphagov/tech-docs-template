## Quick setup guide

### Getting an account

Government PaaS is currently in private beta.

If your organisation is taking part in the private beta and you need an account, or you'd like to find about taking part in the beta, please contact us by emailing [gov-uk-paas-support@digital.cabinet-office.gov.uk](mailto:gov-uk-paas-support@digital.cabinet-office.gov.uk).

In order to provide you with an account, we need to store some personal data about you. Please see [our Privacy Policy](#privacy-policy) for details.

### Setting up the command line

Government PaaS uses a hosting technology called Cloud Foundry. As a tenant (that is, someone who is hosting an application on the PaaS), you will use the Cloud Foundry command line client to interact with the PaaS. To set it up:

1. Download and install the <a href="https://github.com/cloudfoundry/cli#downloads" target="blank">Cloud Foundry CLI for your platform </a> [external page, opens in new tab]
2. To check that it installed correctly, go to the Terminal/command line/Command Prompt and run:

    ```
    cf -v
    ```

    You should get a message like this, confirming the version that's installed (it may not be this exact version):

    ```
    cf version 6.18.1+a1103f0-2016-05-24
    ```

    *Note:* depending on your network configuration you might need to [set an ```HTTP_PROXY``` environment variable](https://docs.cloudfoundry.org/cf-cli/http-proxy.html) for the CLI to connect. Contact your network administrators to work out the correct settings for your configuration.  

3. Log in by running:

    ```
    cf login -a api.cloud.service.gov.uk -u USERNAME
    ```

    Your `USERNAME` is your email address your account was created with.

    You will then be prompted to enter your password, which should have been sent to you by email (subject "Welcome to the Government PaaS").

4. **It's important for security that you now change your password**. Run:

     ``cf passwd``

    You will be prompted to enter your password from the previous step. You can then choose a new password.

Once logged in, you can see the available commands by running ```cf```.


### Deploying a test app

To practice deploying an app, try following the [deploying a static site](#deploying-a-static-site) process.




