set -xe

# This script is run as a pull request check. It generates a brand new site
# from the template so that we can be confident that the project works out of
# the box.

# The `middleman init` script can be configured with environment variables
# instead of the interactive prompt.
#export FIRST_TIME=true
#export USE_GOVUK_LOGO=true
#export SERVICE_NAME=example service
#export SERVICE_URL=example-service.cloudapps.digital
#export DOCUMENTATION_URL=example.docs

bundle exec middleman init tmp/test-run -T file://$(pwd)
cd tmp/test-run
bundle install
bundle exec middleman build --verbose
