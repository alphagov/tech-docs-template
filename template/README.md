# Tech Docs Template

> :warning: This is still in the early development stages and is **not yet ready for production use**.

The Tech Docs Template is a static site generator to build technical documentation with a GOV.UK style for products that Government can use to build services.

## Getting started

To preview or build the website, we need to use the terminal.

Install Ruby with Rubygems, perferably with a [Ruby version manager](https://www.ruby-lang.org/en/documentation/installation/#managers), and the [Bundler gem](http://bundler.io/).

In the application folder type the following to install the required gems:

```
$ bundle install
```

## Making changes

To make changes edit the source files in the `source` folder.

Although a single page of HTML is generated the markdown is spread across multiple files to make it easier to manage. They can be found in `source/documentation`.

A new markdown file isn't automatically included in the generated output. If we add a new markdown file at the location `source/documentation/agile/scrum.md`, the following snippet in `source/index.html.md.erb`, includes it in the generated output.

```
<%= partial 'documentation/agile/scrum' %>
```

Including files manually like this lets us specify the position they appear in the page.

## Preview

Whilst writing documentation we can run a middleman server to preview how the published version will look in the browser. After saving a change the preview in the browser will automatically refresh.

The preview is only available on our own computer. Others won't be able to access it if they are given the link.

Type the following to start the server:

```
$ bundle exec middleman server
```

If all goes well something like the following output will be displayed:

```
== The Middleman is loading
== LiveReload accepting connections from ws://192.168.0.8:35729
== View your site at "http://Laptop.local:4567", "http://192.168.0.8:4567"
== Inspect your site configuration at "http://Laptop.local:4567/__middleman", "http://192.168.0.8:4567/__middleman"
```

We can see see that there are two URLs given to view our site, http://Laptop.local:4567 or http://192.168.0.8:4567. Copy and paste one of those into the browser to view the website.

## Build

When we are ready to publish the website, we need to build the static HTML files.

Type the following to build the HTML:

```
$ bundle exec middleman build
```

This will create a `build` subfolder in the application folder which contains the HTML and asset files ready to be published.

## Publish

Once built, the simplest way to host the website is to copy the contents of the build folder to some hosting via FTP.

## Tests

We have some automated JavaScript tests that use [Jasmine](https://jasmine.github.io/) as a test framework. If you're only making changes to content, you shouldn't need to touch these, but it's worth running them when making any changes that might alter JS behaviour.

To run the tests on your machine:

- Run `bundle exec rake jasmine`
- Navigate to `http://localhost:8888` in a browser of your choosing
- Peruse the output of your tests
