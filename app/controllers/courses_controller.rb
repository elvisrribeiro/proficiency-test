class CoursesController < ApplicationController
    def index
      @courses = Course.all
    end
  
    def show
      @course = Course.find(params[:id])
    end
  
    def new
      @course = Course.new
    end
  
    def edit
      @course = Course.find(params[:id])
    end
  
    def create
      @course = Course.create(course_params)
      if @course.save
        redirect_to :action => 'show', :id => @course.id
      else
        render :action => 'new'
      end
    end
  
    def update
      @course = Course.find(params[:id])
      if @course.update_attributes(course_params)
        redirect_to :action => 'show', :id => @course.id
      end
    end
  
    def delete
      @course = Course.find(params[:id])
      @course.destroy
      redirect_to :action => 'index'
    end
    
    def course_params
        params.require(:course).permit!
  end
end
