class ProcessController < ApplicationController
  def process_resource
    @resource = Resource.new
    uploaded_file = params["Resource"][:file]
    description = params[:description]
    @resource.filename = uploaded_file.original_filename
    @resource.type_of_resource = params[:type_of_resource]
    @resource.data = uploaded_file.read
    @resource.content_type = uploaded_file.content_type
    @resource.description = description
    @resource.save
  end
end
