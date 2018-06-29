Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/technical' => 'programming#programming', via: :get
  match '/team_building' => 'awards#awards', via: :get
  match '/about_us' => 'about#about', via: :get
  match '/' => 'home#home', via: :get
  match '/home' => 'home#home', via: :get

  post '/process' => 'process#process_resource'
  post '/download' => 'download#download_file'
  match '/preview' => 'download#preview_file', via: :get

  get '/filter/:type' => 'download#find_by'

end
