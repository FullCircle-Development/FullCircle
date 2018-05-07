Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match '/upload' => 'upload#upload', via: :get
  post '/process' => 'process#process_resource'
end
