class AddUserTable < ActiveRecord::Migration
  def change
    # SQL
    #
    # CREATE TABLE users (id PRIMARY KEY NOT NULL AUTO INCREMENT,
    #                     name STRING,
    #                     score INTEGER);
    #
    # Active Record
    # You can also use the column types as method calls, rather than calling the column method.
    #
    # create_table(:suppliers) do |t|
    #   t.string :name, limit: 60
         # OR the above and below are the same line.
    #   t.column(:name, :string, { limit: 60 })
    #   Other fields here
    # end
    create_table(:users) do |t|
      t.string   :name,  limit: 100
      t.integer  :score, default: 0
      t.timestamps
    end
  end
end
