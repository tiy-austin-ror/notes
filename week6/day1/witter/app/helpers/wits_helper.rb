module WitsHelper
  def previous_page_link(page)
    link_to('< Prev Page', root_path(page: page - 1)) if page > 0
  end
end
