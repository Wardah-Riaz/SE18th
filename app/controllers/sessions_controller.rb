class SessionsController < ApplicationController
  def new
  end

def home
session[:who] = -1;
end

def newInstructor
end

  def createInstructor
    @user = Instructor1.where(:email => params[:session][:email].downcase).where(:password => params[:session][:password]).first
    if @user
      # Log the user in and redirect to the user's show page.
	session[:user_id] = @user.id
	session[:who]=1;
	redirect_to @user
	#format.html {redirect_to @user , notice: "Success. Logged in!"}
    else
      #flash.now[:danger] = 'Invalid email/password combination'
	
     redirect_to '/loginInstructor'
    end
  end

  def create
    @user = Student.where(:email => params[:session][:email].downcase).where(:password => params[:session][:password]).first
    if @user
      # Log the user in and redirect to the user's show page.
	session[:user_id] = @user.id
	session[:who]=2;
	redirect_to @user
	#format.html {redirect_to @user , notice: "Success. Logged in!"}
    else
      #flash.now[:danger] = 'Invalid email/password combination'
	
     redirect_to '/login'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
	respond_to do |format|
	format.html { redirect_to '/home', notice: 'Logged Out!' }
	format.json { @current_user}
	end
  end
  def destroyInstructor
    session.delete(:user_id)
    @current_user = nil
    redirect_to '/loginInstructor'    
  end
end
