Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/upload' => 'upload#upload', via: :get
  match '/programming' => 'programming#programming', via: :get
  post '/process' => 'process#process_resource'
  get '/download' => 'download#download_file'
  get '/filter/:type' => 'download#find_by'
end
