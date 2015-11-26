require 'json'

class UploadController < ApplicationController

protect_from_forgery except: :upload1
protect_from_forgery except: :upload2

def upload1
	str = ""

	# json tranfer
	json_str = params[:param1]
	json_obj = JSON.parse(json_str)
	str.concat("name:")
	str.concat(json_obj["name"])

	render :text => str
end

def upload2
        str = ""

        # json tranfer
        json_str = params[:param1]
        json_obj = JSON.parse(json_str)
        str.concat("name:")
        str.concat(json_obj["name"])

        # upload info access
        str.concat(",upload file name:")
        upload_file = params[:param2];
        upload_file_data = upload_file.read
        upload_file_name = upload_file.original_filename
        str.concat(upload_file_name)
        str.concat(",upload_file_size:")
        str.concat("#{upload_file_data.size}")

        render :text => str
end

end
