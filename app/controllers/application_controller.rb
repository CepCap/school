class ApplicationController < ActionController::Base
  def current_teacher
    @current_user ||= Teacher.find_by(id: session[:teacher_id]) if session[:teacher_id]
  end

  helper_method :current_teacher

  def authenticate_teacher!
   redirect_to '/login' unless current_teacher
  end
end
