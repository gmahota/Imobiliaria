class ApplicationController < ActionController::Base
 
  protect_from_forgery
  
  helper_method :current_user  
  
private  
def current_user_session  
  return @current_user_session if defined?(@current_user_session)  
  @current_user_session = UserSession.find  
end  
  
def current_user  
  @current_user = current_user_session && current_user_session.record  
end  

rescue_from CanCan::AccessDenied do |exception|
     redirect_to main_app.root_url, :flash => { :errors => exception.message }
end

end