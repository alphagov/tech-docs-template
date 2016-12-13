require 'thor/group'

module Middleman
  class Generator < ::Thor::Group
    include ::Thor::Actions

    source_root File.expand_path(File.dirname(__FILE__))

    def detect_if_first_time_install
      if option_set?('FIRST_TIME')
        @first_time = parse_boolean('FIRST_TIME')
      else
        @first_time = yes?('Are you creating a completely new documentation project?')
      end
    end

    def copy_template_files
      directory 'template', '.', exclude_pattern: /\.DS_Store$/
    end

    def ask_about_paas
      return unless @first_time

      if option_set?('USE_PAAS')
        @use_paas = parse_boolean('USE_PAAS')
      else
        @use_paas = yes?('Will you be deploying this on Government PaaS?')
      end

      return unless @use_paas

      @application_name = ENV['APPLICATION_NAME'] || ask(
        <<-MESSAGE
What is the name of your application on PaaS?
If your application URL is larry-the-cat.cloudapps.digital, this will be "larry-the-cat".
        MESSAGE
      )
    end

    def ask_about_canonical_host
      return unless @first_time

      @canonical_host = ENV['CANONICAL_HOST'] || ask(
        <<-MESSAGE
What is the canonical hostname of your application?
e.g. docs.larry-the-cat.service.gov.uk
        MESSAGE
      )
    end

    def configure_paas
      return unless @first_time
      return unless @use_paas

      template 'optional/manifest.yml', 'manifest.yml'
      copy_file 'optional/nginx.conf', 'nginx.conf'
      gsub_file 'nginx.conf', '__CANONICAL_HOST__', @canonical_host
      directory 'optional/script', 'script'
    end

    def configure_tech_docs
      return unless @first_time

      template 'optional/config/tech-docs.yml', 'config/tech-docs.yml'
    end

    def copy_example_documentation
      return unless @first_time

      directory 'optional/source', 'source'
      copy_file 'optional/README.md', 'README.md'
    end

  private

    def option_set?(key)
      ENV.key?(key)
    end

    def parse_boolean(key)
      ENV[key] == 'true'
    end
  end
end
