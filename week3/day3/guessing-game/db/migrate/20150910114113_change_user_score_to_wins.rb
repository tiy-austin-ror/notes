class ChangeUserScoreToWins < ActiveRecord::Migration
  def change
    remove_column :users, :score, :integer
    add_column    :users, :wins,  :integer
  end
end
