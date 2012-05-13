module MarkdownHelper
  def to_html(markdown)
    Kramdown::Document.new(markdown).to_html
  end
end
