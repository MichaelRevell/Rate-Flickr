class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def get_pic(id)
      info = flickr.photos.getInfo :photo_id => id
      @pic = FlickRaw.url_m(info)
      
      return @pic
      
  end
  
  def average_rating(id)
  end
end