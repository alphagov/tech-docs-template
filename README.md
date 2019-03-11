# Tech Docs Template

The Tech Docs Template is a [middleman template][mmt] that
you can use to build technical documentation using a GOV.UK style.

This repo is the template used to generate new sites. The generated site uses HTML, CSS, JS and images from the [tech docs gem](https://github.com/alphagov/tech-docs-gem).

👉 Find out more about the template and its features from the [Tech Docs Template documentation][tdt-docs].

## Local development

If you make changes to the template you can create a test site with this command.

```
bundle install
bundle exec middleman init tmp/test-run -T file://$(pwd)
cd tmp/test-run
bundle exec middleman server
```

Your generated site should appear on <http://localhost:4567>.





[mit]: LICENCE
[mmt]: https://middlemanapp.com/advanced/project_templates/
[tdt-docs]: https://tdt-documentation.london.cloudapps.digital
