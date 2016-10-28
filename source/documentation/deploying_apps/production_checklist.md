## Production checklist

Before deploying an app for production use, check the following:

1. If your app uses a PostgreSQL service, make sure that you have selected the high-availability plan (``M-HA-dedicated-9.5``) for the bound ``postgres`` service instance.
2. You are running at least two instances of the app to ensure availability. Use ``cf scale APPNAME -i 2`` to add an extra running instance.
3. You are prepared to use a [blue-green deployment process](https://docs.cloudfoundry.org/devguide/deploy-apps/blue-green.html) for when the app needs to be updated or restarted (this avoids problems due to a known issue with the PaaS that can generate transient 404 errors).
