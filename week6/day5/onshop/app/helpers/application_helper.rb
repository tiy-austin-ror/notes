module ApplicationHelper

  def action_link_to(param_name, value, title = nil)
    if params[param_name].to_sym == value
      class_names = 'btn btn-sm btn-primary'
    else
      class_names = 'btn btn-sm btn-default'
    end
    if title.nil?
      title = value.to_s.titleize
    end
    link_to title, params.merge(param_name => value), class: class_names
  end
end
