class Helpers 
  require 'sinatra/base'
  
  def current_user(session)
    user = User.find_by(user_id: session[:user_id])
  end

  def is_logged_in?(session)
    !!session[:user_id]
  end
end
