class CreateCourses < ActiveRecord::Migration

  def up
    create_table :courses do |t|
      t.string "name", :limit => 45
      t.string "description", :limit => 45
      t.integer "status"
      
      t.timestamps
    end
  end

  def down
  	drop_table :courses
  end

end
