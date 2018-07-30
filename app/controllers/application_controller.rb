class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception
   helper_method :current_user
   def authorize
     redirect_to login_path unless logged_in
   end

   private
   def current_user
     @current_user = User.find_by(session[:user_id]) if session[:user_id]
   end

   def logged_in
     !!current_user
   end
end
