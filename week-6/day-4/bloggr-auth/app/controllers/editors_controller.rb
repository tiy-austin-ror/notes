class EditorsController < ApplicationController
  def create
    editor = Editor.new(editor_params)
    editor.save!
    flash[:notice] = "New editor added!"
    redirect_to post_path(editor.post)
  end

  private
  def editor_params
    params.require(:editor).permit(:user_id, :post_id)
  end
end
