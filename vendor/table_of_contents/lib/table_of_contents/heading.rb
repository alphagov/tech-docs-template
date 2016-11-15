module TableOfContents
  class Heading
    def initialize(element_name:, text:, attributes:)
      @element_name = element_name
      @text = text
      @attributes = attributes
    end

    def size
      @element_name.scan(/h(\d)/) && $1 && Integer($1)
    end

    def href
      '#' + @attributes['id']
    end

    def title
      @text
    end

    def ==(other)
      @element_name == other.instance_variable_get("@element_name") &&
      @text == other.instance_variable_get("@text") &&
      @attributes == other.instance_variable_get("@attributes")
    end
  end
end
