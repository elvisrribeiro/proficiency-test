class CreateClassRooms < ActiveRecord::Migration

  def up
    create_table :class_rooms do |t|
      t.references :student
      t.references :course
      t.datetime "entry_at"

      t.timestamps
    end
    add_index :class_rooms, ["student_id", "course_id"]
  end

  def down
  	drop_table :class_rooms
  end

end
