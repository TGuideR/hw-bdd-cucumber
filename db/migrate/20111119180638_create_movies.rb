#Add movie in movie table
class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |table|
      table.string :title
      table.string :rating
      table.text :description
      table.datetime :release_date
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      table.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
