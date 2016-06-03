class ApplicationController < ActionController::Base
<<<<<<< HEAD
  before_action :authenticate_user!, except: :about
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
>>>>>>> ac66dd36a2730c9829d960ddcef508e076f6603f
  protect_from_forgery with: :exception
end
