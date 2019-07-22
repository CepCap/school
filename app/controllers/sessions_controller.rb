class SessionsController < ApplicationController
  def new
  end

  def create
    teacher = Teacher.find_by(email: params[:email])
    if teacher&.authenticate(params[:password])
     session[:teacher_id] = teacher.id
     flash[:success] = 'Successfully Logged In!'
     redirect_to students_path
    else
     flash[:warning] = 'Invalid Username or Password'
     redirect_to '/login'
    end
  end

  def destroy
    session[:teacher_id] = nil
    flash[:success] = 'Successfully Logged Out!'
    redirect_to '/login'
  end
end
