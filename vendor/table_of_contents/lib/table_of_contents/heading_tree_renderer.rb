module TableOfContents
  class HeadingTreeRenderer
    def initialize(heading_tree)
      @heading_tree = heading_tree
    end

    def html
      render_tree(@heading_tree)
    end

  private
    def render_tree(tree, indentation = '')
      output = ''

      if tree.heading
        output+= indentation + %{<a href="#{tree.heading.href}">#{tree.heading.title}</a>\n}
      end

      if tree.children.any?
        output+= indentation + "<ul>\n"

        tree.children.each do |child|
          output+= indentation + indentation_increment + "<li>\n"
          output+= render_tree(child, indentation + indentation_increment * 2)
          output+= indentation + indentation_increment + "</li>\n"
        end

        output+= indentation + "</ul>\n"
      end

      output
    end

    def indentation_increment
      '  '
    end
  end
end
