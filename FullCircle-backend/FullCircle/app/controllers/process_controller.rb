class ProcessController < ApplicationController
  def process_resource
    @resource = Resource.new
    @resource.filename = File.basename(params[:file])
    @resource.type_of_resource = params[:type_of_resource]
    @resource.data = params[:file].read
    @resource.content_type = params[:file].content_type
    @resource.save
  end
end
