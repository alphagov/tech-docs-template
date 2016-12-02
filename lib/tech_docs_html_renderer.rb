require 'middleman-core/renderers/redcarpet'

class TechDocsHTMLRenderer < Middleman::Renderers::MiddlemanRedcarpetHTML
  def image(link, *args)
    %(<a href="#{link}" target="_blank">#{super}</a>)
  end
end
