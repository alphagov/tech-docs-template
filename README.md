# Tech Docs Template

The Tech Docs Template is a [Middleman template][mmt] that
you can use to build technical documentation using a GOV.UK style.

This repo is the template used to generate new sites. The generated site uses HTML, CSS, JS and images from the [tech docs gem](https://github.com/alphagov/tech-docs-gem).

You’re welcome to use the template even if your service isn’t considered part of GOV.UK, but your site or service must not:

- identify itself as being part of GOV.UK
- use the crown or GOV.UK logotype in the header
- use the GDS Transport typeface
- suggest that it’s an official UK government website if it’s not

👉 To find out more about setting up and managing content for a website using this template, see the [Tech Docs Template documentation][tdt-docs].

## Get started

To use the Tech Docs Template, see the [Tech Docs Template documentation on getting started](https://tdt-documentation.london.cloudapps.digital/create_project/get_started/#get-started).

## Create a new documentation project

To create a new project using the Tech Docs Template, see the [Tech Docs Template documentation on creating a new documentation project](https://tdt-documentation.london.cloudapps.digital/create_project/create_new_project/#create-a-new-documentation-project).

## Preview your website locally

To preview your new website locally, see the [Tech Docs Template documentation on previewing your documentation](https://tdt-documentation.london.cloudapps.digital/create_project/preview/#preview-your-documentation).

## Configure your website

To configure your documentation site, see the [Tech Docs Template documentation on configuring your documentation site](https://tdt-documentation.london.cloudapps.digital/configure_project/global_configuration/#configure-your-documentation-site).

To configure individual documentation site pages, see the [Tech Docs Template documentation on configuring page settings](https://tdt-documentation.london.cloudapps.digital/configure_project/frontmatter/#configure-page-settings).

## Write your content

For more information on writing and editing your content, see the [Tech Docs Template documentation on writing your documentation](https://tdt-documentation.london.cloudapps.digital/write_docs/#write-your-documentation).

## Publishing

For more information on publishing your website, see the [Tech Docs Template documentation on publishing your documentation project](https://tdt-documentation.london.cloudapps.digital/publish_project/#publish-your-documentation-project).

## Troubleshooting

Run `bundle update` to make sure you're using the most recent Ruby gem versions.

Run `bundle exec middleman build --verbose` to get detailed error messages to help with finding the problem.

For more information, see the [Tech Docs Template documentation on maintaining your documentation project](https://tdt-documentation.london.cloudapps.digital/maintain_project/#maintain-your-documentation-project).

## Contribute

👉 See the [CONTRIBUTE.md file in the tech-docs-gem repository][contribute].

## Licence

Unless stated otherwise, the codebase is released under [the MIT License][mit].
This covers both the codebase and any sample code in the documentation.

The documentation is [© Crown copyright][copyright] and available under the terms of the [Open Government 3.0][ogl] licence.

[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
[mmt]: https://middlemanapp.com/advanced/project_templates/
[tdt-docs]: https://tdt-documentation.london.cloudapps.digital
[config]: https://tdt-documentation.london.cloudapps.digital/amend_project/configuration/#configuration-options
[frontmatter]: https://tdt-documentation.london.cloudapps.digital/frontmatter.html#frontmatter
[multipage]: https://tdt-documentation.london.cloudapps.digital/create_project/multipage/#build-a-multipage-documentation-site
[example-content]: https://tdt-documentation.london.cloudapps.digital/amend_project/content/#change-your-content
[partials]: https://tdt-documentation.london.cloudapps.digital/create_project/single_page/#add-partial-lines
[contribute]: https://github.com/alphagov/tech-docs-gem/blob/master/CONTRIBUTING.md
[install-ruby]: https://tdt-documentation.london.cloudapps.digital/create_project/setup_local/#install-ruby
[install-middleman]: https://tdt-documentation.london.cloudapps.digital/create_project/setup_local/#install-ruby
