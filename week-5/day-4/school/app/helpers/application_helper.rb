module ApplicationHelper
  def hello_header
    "<h1>Hello!</h1>".html_safe
  end

  def link(location, display_text)
    # This is the same as Rail's #link_to
    "<a href=#{location}>#{display_text}</a>".html_safe
  end
end
