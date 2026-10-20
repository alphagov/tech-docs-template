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

echo "======================================================"
echo "              DIAGNOSTIC SNAPSHOT START               "
echo "======================================================"

echo -e "\n--- 1. GENERATED PROJECT ROOT ---"
ls -la

echo -e "\n--- 2. NODE_MODULES IN DOWNSTREAM (Does it exist?) ---"
ls -la node_modules/ 2>/dev/null || echo "No local node_modules/ directory found in tmp/test-run"

echo -e "\n--- 3. SOURCE/ASSET FOLDERS ---"
# Middleman usually keeps assets in source/javascripts or source/stylesheets
ls -la source/ 2>/dev/null || echo "No source/ directory found"

echo -e "\n--- 3. FILE CONTENTS ---"
TARGET_FILE="./lib/assets/stylesheets/_govuk_tech_docs.scss"

if [ -f "$TARGET_FILE" ]; then
  cat "$TARGET_FILE"
else
  echo "File not found: $TARGET_FILE"
fi

echo -e "\n--- 4. BUNDLED GEM LOCATION & CONTENTS ---"
# This checks where Bundler actually put your gem and if the JS assets came with it
# IMPORTANT: Change 'your_gem_name' below to the actual name of your gem in the Gemfile
GEM_NAME="govuk_tech_docs"
GEM_PATH=$(bundle info $GEM_NAME --path 2>/dev/null || echo "NOT_FOUND")

if [ "$GEM_PATH" != "NOT_FOUND" ]; then
  echo "Gem is installed at: $GEM_PATH"
  echo "Checking for assets inside the installed gem:"
  ls -la "$GEM_PATH/node_modules/govuk-frontend" 2>/dev/null || echo "node_modules/govuk-frontend directory is MISSING inside the installed gem cache!"
else
  echo "WARNING: $GEM_NAME is not in the downstream project's Gemfile!"
fi

echo -e "\n--- 5. MIDDLEMAN CONFIG.RB MAP ---"
cat config.rb 2>/dev/null || echo "No config.rb found"

echo "======================================================"
echo "               DIAGNOSTIC SNAPSHOT END                "
echo "======================================================"

# Proceed with the failing build step so we can see the exact error context
bundle exec middleman build --verbose