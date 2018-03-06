# Tech Docs Template

The Tech Docs Template is a [middleman][mm] [template][mmt] that
you can use to build technical documentation using a GOV.UK style.

This repo is the template used to generate new sites. The generated site uses HTML,
CSS, JS and images from the [tech docs gem](https://github.com/alphagov/tech-docs-gem).

![Screenshot of Example Documentation](/screenshots/composite.png)

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

From your project folder, run:

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
