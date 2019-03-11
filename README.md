# Tech Docs Template

The Tech Docs Template is a [middleman template][mmt] that
you can use to build technical documentation using a GOV.UK style.

This repo is the template used to generate new sites. The generated site uses HTML, CSS, JS and images from the [tech docs gem](https://github.com/alphagov/tech-docs-gem).

👉 Find out more about the template and its features from the [Tech Docs Template documentation][tdt-docs].

## Before you start

To use the Tech Docs Template you need:

- [Ruby][install-ruby]
- [Middleman][install-middleman]

```
bundle install
bundle exec middleman init tmp/test-run -T file://$(pwd)
cd tmp/test-run
bundle exec middleman server
```

Your generated site should appear on <http://localhost:4567>.


## Licence

Unless stated otherwise, the codebase is released under [the MIT License][mit].
This covers both the codebase and any sample code in the documentation.

The documentation is [© Crown copyright][copyright] and available under the terms of the [Open Government 3.0][ogl] licence.

[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
[mmt]: https://middlemanapp.com/advanced/project_templates/
[tdt-docs]: https://tdt-documentation.london.cloudapps.digital
