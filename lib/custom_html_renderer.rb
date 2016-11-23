require 'middleman-core/renderers/redcarpet'

class CustomHTMLRenderer < Middleman::Renderers::MiddlemanRedcarpetHTML
  include Redcarpet::Render::SmartyPants

  # This is effectively a reimplementation of
  # https://github.com/vmg/redcarpet/blob/master/ext/redcarpet/html.c#L307-L325
  # in Ruby.
  def header(text, level)
    fragment = header_anchor(text)
    <<~EOS
      <h#{level} id="#{fragment}" class="anchored-heading">
        <a href="##{fragment}" class="anchored-heading__icon" aria-hidden="true">🔗</a>
        #{text}
      </h#{level}>
    EOS
  end

private

  def header_anchor(text)
    text
      .gsub(/\<.*?\>/, '')
      .gsub(/\&.*?\;/, '')
      .parameterize
  end
end
