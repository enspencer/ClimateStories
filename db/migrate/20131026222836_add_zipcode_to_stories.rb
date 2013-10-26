class AddZipcodeToStories < ActiveRecord::Migration
  def change
    add_column :stories, :zipcode, :string
  end
end
