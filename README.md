# Tech Docs Template

The Tech Docs Template is a [middleman][mm] [template][mmt] that
you can use to build technical documentation using a GOV.UK style.

This repo is the template used to generate new sites. The generated site uses HTML,
CSS, JS and images from the [tech docs gem](https://github.com/alphagov/tech-docs-gem).

![Screenshot of Example Documentation](/screenshots/composite.png)

## Active users

This project is in active use by:

- [GDS Way](https://gds-way.cloudapps.digital) ([GitHub repo](https://github.com/alphagov/gds-way))
- [GOV.UK Content API](https://content-api.publishing.service.gov.uk) ([GitHub repo](https://github.com/alphagov/govuk-content-api-docs))
- [GOV.UK Developer docs](https://docs.publishing.service.gov.uk/) ([GitHub repo](https://github.com/alphagov/govuk-developer-docs))
- [GOV.UK Pay](https://govukpay-docs.cloudapps.digital) ([GitHub repo](https://github.com/alphagov/pay-tech-docs))
- [GOV.UK Platform as a Service](https://docs.cloud.service.gov.uk/) ([GitHub repo](https://github.com/alphagov/paas-tech-docs))
- [GOV.UK Registers](https://registers-docs.cloudapps.digital) ([GitHub repo](https://github.com/alphagov/registers-tech-docs))
- [Reliability Engineering](https://reliability-engineering.cloudapps.digital) ([GitHub repo](https://github.com/alphagov/reliability-engineering))

In development:

- GOV.UK Notify ([GitHub repo](https://github.com/alphagov/notifications-tech-docs))

## Prerequisites

- You'll need [middleman][mm] installed, and its dependencies (Ruby). If you have Ruby v2.2.2 or newer installed you _should_ just be able to run `gem install middleman`. Installing or updating Ruby is outside the scope of this README.

## Creating a new documentation project

From the command line run the following commands, substituting `my-new-project`
for the name of your new project:

```bash
middleman init my-new-project -T alphagov/tech-docs-template
```

This will run an interactive prompt where you can set basic configuration for
your project.

In order to configure things like the header, edit `config/tech-docs.yml`.

## Updating a project to use the latest template

In most cases you can update your project to the latest template by running:

```
bundle update govuk_tech_docs
```

This will make the site use the latest version of the [govuk_tech_docs gem](https://github.com/alphagov/tech-docs-gem)).

The [CHANGELOG](https://github.com/alphagov/tech-docs-gem/blob/master/CHANGELOG.md) in the gem should tell you what changed and if you have to update any of your files. If that is the case, run:

```
middleman init . -T alphagov/tech-docs-template
```

If you have made any changes to the layout or any of the assets you will be
prompted to resolve any conflicts, at which point you can view a diff between
your version and the latest version.

## Local development

If you make changes to the template you can create a test site with this command.
Make sure that you've committed your changes first, because Middleman works with Git.

```
bundle install
bundle exec middleman init tmp/test-run -T file://$(pwd)
cd tmp/test-run
bundle exec middleman server
```

Your generated site should appear on <http://localhost:4567>.

[mm]: https://middlemanapp.com/
[mmt]: https://middlemanapp.com/advanced/project_templates/
