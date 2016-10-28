## Redirecting all traffic

If a site moves to a different domain name, you can use a simple static site with a custom `nginx.conf`
file to redirect all traffic from the old domain to the new domain. Example `nginx.conf` site for `NEW_DOMAIN_NAME`:

```
worker_processes 1;
daemon off;

error_log <%= ENV["APP_ROOT"] %>/nginx/logs/error.log;
events { worker_connections 1024; }

http {
  server {
    listen <%= ENV["PORT"] %>;
    server_name localhost;
    return 301 $scheme://NEW_DOMAIN_NAME$request_uri;
  }
}
```

Deploy your application to `NEW_DOMAIN_NAME` and then `cf push` a simple static site with that `nginx.conf`
configuration to the old domain name. You can see a [full working example here](https://github.com/18F/c2-redirect).

You can read more about [nginx customization](https://github.com/cloudfoundry/staticfile-buildpack#advanced-nginx-configuration).