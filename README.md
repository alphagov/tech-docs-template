# Tech Docs Template

The Tech Docs Template is a [middleman][mm] [template][mmt] that
you can use to build technical documentation using a GOV.UK style.

![Screenshot of Example Documentation](/screenshots/composite.png)

## Prerequisites

- You'll need [middleman][mm] installed, and its dependencies (Ruby). If you have Ruby v2.2.2 or newer installed you _should_ just be able to run `gem install middleman`. Installing or updating Ruby is outside the scope of this README.

## Creating a new documentation project

From the command line run the following commands, substituting `my-new-project`
for the name of your new project:

```bash
mkdir my-new-project
cd my-new-project
FIRST_TIME=true middleman init . -T alphagov/tech-docs-template
```

This will run an interactive prompt where you can set basic configuration for
your project.

Once your project has been created, avoid editing any of the following:

- `source/images/*`
- `source/javascripts/*`
- `source/layouts/*`
- `source/stylesheets/*`
- `source/favicon.ico`

as this will make it a lot harder to stay up to date with any changes made
to the template.

In order to configure things like the header, edit `config/tech-docs.yml`.

## Updating a project to use the latest template

From your project folder, run:

```
FIRST_TIME=false middleman init . -T alphagov/tech-docs-template
```

If you have made any changes to the layout or any of the assets you will be
prompted to resolve any conflicts, at which point you can view a diff between
your version and the latest version.

## Tests

We have some automated JavaScript tests that use [Jasmine][jas] as a test
framework.

To run the tests on your machine:

- Run `bundle exec rake jasmine`
- Navigate to `http://localhost:8888` in a browser of your choosing
- Peruse the output of your tests

Or, on the command line, run `bundle exec rake jasmine:ci`.



[mm]: https://middlemanapp.com/
[mmt]: https://middlemanapp.com/advanced/project_templates/
[jas]: https://jasmine.github.io/
