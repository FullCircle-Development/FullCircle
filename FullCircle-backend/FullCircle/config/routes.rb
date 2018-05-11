Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  match '/programming' => 'programming#programming', via: :get
  match '/awards' => 'awards#awards', via: :get
  match '/electrical' => 'electrical#electrical', via: :get
  match '/fundraising' => 'fundraising#fundraising', via: :get
  match '/mechanical' => 'mechanical#mechanical', via: :get
  match '/outreach' => 'outreach#outreach', via: :get
  match '/about_us' => 'about#about', via: :get

  post '/process' => 'process#process_resource'
  post '/download' => 'download#download_file'
  match '/upload' => 'upload#upload', via: :get

  get '/filter/:type' => 'download#find_by'
end
