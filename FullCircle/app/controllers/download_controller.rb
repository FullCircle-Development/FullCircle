class DownloadController < ApplicationController
skip_before_action :verify_authenticity_token
  def find_by
    res = []
    Resources.all.each do |resource|
      if resource.type_of_resource == :type
        res.insert(0, resource.id)
      end
    end
    render json: res.as_json
  end
  def download_file
    id = params[:id].to_i
    resource = Resource.find_by_id id
    send_data resource.data, filename: resource.filename, type: resource.content_type, disposition: 'attachment'
  end
  def preview_file
    id = params[:id].to_i
    resource = Resource.find_by_id id
    send_data resource.data, filename: resource.filename, type: resource.content_type, :disposition => 'inline'
  end
  def create_tmp
    id = params[:id].to_i
    resource = Resource.find_by_id id

    tempfile = File.open("/tmp/#{resource.filename}", 'w+')
  end
end
