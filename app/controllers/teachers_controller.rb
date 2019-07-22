class TeachersController < ApplicationController
  before_action :find_teachers, only: :index
  before_action :find_teacher, only: :show

  def index
  end

  def show
  end

  private

  def find_teachers
    @teachers = Teacher.all
  end

  def find_teacher
    @teacher = Teacher.find(params[:id])
  end
end
