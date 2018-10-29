# Tech Docs Template

The Tech Docs Template is a [middleman][mm] [template][mmt] that
you can use to build technical documentation using a GOV.UK style.

This repo is the template used to generate new sites. The generated site uses HTML,
CSS, JS and images from the [tech docs gem](https://github.com/alphagov/tech-docs-gem).

👉 [See alphagov.github.io/tech-docs-manual](https://alphagov.github.io/tech-docs-manual)

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
