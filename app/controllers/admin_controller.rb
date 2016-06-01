class AdminController < ApplicationController
  def login
	  if request.post?
	     if params[:admin][:name] == "admin" and params[:admin][:password]=="password"
		     session[:admin]="admin loggedin"
		     redirect_to :controller=>:books
	    else
		    flash[:notice] = "Invalid uesername/password"
		    render :action=>:login
	    end
	  end
  end
  
  def logout
	  session[:admin]=nil
	  flash[:notice] = "You are logged out"
	  redirect_to :action=>:login
  end
end
