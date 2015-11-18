class UploadController < ApplicationController

protect_from_forgery except: :json

def json
	str = ""
	params.each_key do |key|
		str.concat(key)
		str.concat("<br>")
	end
	render :text => params[:name]
end

end
