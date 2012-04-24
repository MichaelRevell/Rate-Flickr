class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def get_pic(id)
    
    FlickRaw.api_key="424ca2d344deb8f86a06ca73f26c9aa8"
    FlickRaw.shared_secret="0bad88d39b4792c3"
      info = flickr.photos.getInfo :photo_id => id
      @pic = FlickRaw.url_m(info)
      
      return @pic
      
  end
  
  def average_rating(id)
    
  end
end