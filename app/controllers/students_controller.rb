class StudentsController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @students = Student.all
  end
end
