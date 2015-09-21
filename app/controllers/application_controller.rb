class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def render_404
    render :json => { error: "404 Not Found"}.to_json, :status => :not_found
  end
end
