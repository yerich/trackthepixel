class ImpressionsController < ApplicationController
  def create
    @impression = Impression.new()
    @impression.pixel = Pixel.find_by(token: params[:token])
    if !@impression.pixel
      # TODO 404
    end
    @impression.ip_address = request.remote_ip
    @impression.referer = request.referer
    @impression.save()

    send_data(Base64.decode64("R0lGODlhAQABAPAAAAAAAAAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="), 
      :type => "image/gif", :disposition => "inline")
  end
end
