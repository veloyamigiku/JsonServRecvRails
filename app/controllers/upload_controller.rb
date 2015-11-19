require 'json'

class UploadController < ApplicationController

protect_from_forgery except: :json

def json
	str = ""

	# json tranfer
	json_str = params[:json]
	json_obj = JSON.parse(json_str)
	str.concat("name:")
	str.concat(json_obj["name"])

	# upload info access
	str.concat(",upload file name:")
	upload_file = params[:upload1];
	upload_file_data = upload_file.read
	upload_file_name = upload_file.original_filename
	str.concat(upload_file_name)
	str.concat(",upload_file_size:")
	str.concat("#{upload_file_data.size}")

	render :text => str
end

end
