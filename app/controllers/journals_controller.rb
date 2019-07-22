class JournalsController < ApplicationController
  before_action :authenticate_teacher!

  def index
    @student = Student.find(params[:student_id])
    @journals = Journal.where(student_id: @student.id)
  end
end
