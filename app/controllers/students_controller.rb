class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to :action => 'show', :id => @student.id
    else
      render :action => 'new'
    end
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to :action => 'show', :id => @student.id
    end
  end

  def delete
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to :action => 'index'
  end
  
  def student_params
      params.require(:student).permit!
  end
end
