# This script is run by Travis. It generates a brand new site from the
# template so that we can be confident that the project works out of the box.

# The `middleman init` script can be configured with environment variables
# instead of the interactive prompt.
export FIRST_TIME=true
export USE_PAAS=true
export APPLICATION_NAME=larry-the-cat
export CANONICAL_HOST=larry-the-cat.cloudapps.digital

# When Travis runs the "/push" tests it runs inside a repo cloned with
# --depth=1, which means middleman can't clone the template in this directory.
# This fixes that but will fail on "/pr" tests, but we can ignore that.
git fetch --unshallow

# The `bundle` commands inside `tmp/test-run` don't work as expected on Travis
# because it sets the `BUNDLE_GEMFILE` env variable to Gemfile in the root of
# the project. We have to override it manually to install the proper gems in the
# generated site.
#
# See https://docs.travis-ci.com/user/languages/ruby/#%24BUNDLE_GEMFILE-environment-variable
gem install middleman &&
middleman init tmp/test-run -T file://$(pwd) &&
cd tmp/test-run &&
BUNDLE_GEMFILE=./Gemfile bundle install &&
BUNDLE_GEMFILE=./Gemfile bundle exec middleman build --verbose
