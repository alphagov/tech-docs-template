## Excluding files

Cloud Foundry isn't version-control aware, so `cf push` will deploy the working state of whatever files you have in that directory. In most cases, you will want to [exclude files](http://docs.cloudfoundry.org/devguide/deploy-apps/prepare-to-deploy.html#exclude) ignored by Git. From within your project directory, run:

```
ln -s .gitignore .cfignore
```

and commit the `.cfignore` file to your repository. 

If you have a more advanced CF setup, bear in mind these points about `.cfignore`:

1. If you have a more advanced app setup and have apps with a `path` other than the project root (where you run `cf push` from), you will need an additional `.cfignore` file located in each app `path`;

2. Also note that more advanced `.gitignore` syntax, such as the `**` recursive subdirectory wildcard, are _not_ supported by `.cfignore`.