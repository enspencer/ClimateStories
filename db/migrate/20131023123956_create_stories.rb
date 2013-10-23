class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :body
      t.string :image_url
      t.boolean :gmaps
      t.float :latitude
      t.float :longitude
      t.string :country
      t.string :region
      t.string :town
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
