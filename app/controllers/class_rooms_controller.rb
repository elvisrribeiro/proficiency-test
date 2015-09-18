class ClassRoomsController < ApplicationController  
    def index
      @classRooms = ClassRoom.all
    end
  
    def new
      @students = Student.all
      @courses = Course.all
      @classRoom = ClassRoom.new
    end
  
    def create
      @classRoom = ClassRoom.create(classRoom_params)
      @classRoom.save
      redirect_to :action => 'index'
    end
  
    def delete
      @classRoom = ClassRoom.find(params[:id])
      @classRoom.destroy
      redirect_to :action => 'index'
    end
    
    def classRoom_params
        params.require(:class_room).permit!
  end
end
