class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    render :'/students/show'
  end

  def activate
    student = Student.find(params[:id])
    student.active = true
    redirect_to "/students/#{student.id}"
  end
end
