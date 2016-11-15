module TableOfContents
  module Helpers
    def table_of_contents(html)
      HeadingTreeRenderer.new(
        HeadingTreeBuilder.new(
          HeadingsBuilder.new(html).headings
        ).tree
      ).html
    end
  end
end
