class Student < ActiveRecord::Base
	has_many :class_rooms
	validates :name, presence: true
end
