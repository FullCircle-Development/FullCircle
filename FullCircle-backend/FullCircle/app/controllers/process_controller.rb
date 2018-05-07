class ProcessController < ApplicationController
  def process_resource
    @resource = Resource.new
    # Instance of UploadedFile classes
    # http://api.rubyonrails.org/classes/ActionDispatch/Http/UploadedFile.html#method-i-read
    uploaded_file = params["Resource"][:file]

    # render plain: uploaded_file.original_filename
    @resource.filename = uploaded_file.original_filename
    # ETC...
    @resource.type_of_resource = params[:type_of_resource]
    @resource.data = uploaded_file.read
    @resource.content_type = uploaded_file.content_type
    @resource.save
  end
end
