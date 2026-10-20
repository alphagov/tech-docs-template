set -xe

# This script is run as a pull request check. It generates a brand new site
# from the template so that we can be confident that the project works out of
# the box.

# The `middleman init` script can be configured with environment variables
# instead of the interactive prompt.
export FIRST_TIME=true
export USE_GOVUK_LOGO=true
export SERVICE_NAME=example service
export SERVICE_URL=example-service.cloudapps.digital
export DOCUMENTATION_URL=example.docs

bundle exec middleman init tmp/test-run -T file://$(pwd)
cd tmp/test-run
bundle install


echo -e "\n--- SPROCKETS LOAD PATHS ---"
# This boots Middleman and asks it to list every folder it checks for assets
echo 'puts app.sprockets.paths' | bundle exec middleman console

# Proceed with the failing build step so we can see the exact error context
bundle exec middleman build --verbose