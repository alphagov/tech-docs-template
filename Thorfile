require 'thor/group'

module Middleman
  class Generator < ::Thor::Group
    include ::Thor::Actions

    source_root File.expand_path(File.dirname(__FILE__))

    def detect_if_first_time_install
      @first_time = yes?('Are you creating a completely new documentation project?')
    end

    def copy_template_files
      directory 'template', '.', exclude_pattern: /\.DS_Store$/
    end

    def ask_about_paas
      return unless @first_time

      @use_paas = yes?('Will you be deploying this on Government PaaS?')

      return unless @use_paas

      @application_name = ask(
        <<~MESSAGE
          What is the name of your application on PaaS?
          If your application URL is larry-the-cat.cloudapps.digital, this will be "larry-the-cat".
        MESSAGE
      )
    end

    def ask_about_canonical_host
      return unless @first_time

      @canonical_host = ask(
        <<~MESSAGE
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
    end
  end
end
