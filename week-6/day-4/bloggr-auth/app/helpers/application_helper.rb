module ApplicationHelper
  def user_is_owner_or_editor?(post)
    user_is_owner?(post) || post.collaborators.include?(current_user)
  end

  def user_is_owner?(post)
    post.user == current_user
  end
end
