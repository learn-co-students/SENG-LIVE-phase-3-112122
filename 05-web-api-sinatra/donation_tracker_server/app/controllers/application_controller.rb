class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  # HTTP verbs: GET, POST, PATCH, DELETE

  # httpVerb 'path' do 
    # inside of this block, we produce our response
  # end


  # Build a CRUD api 

  get '/welcome' do 
    "Hello World!!"
  end


  # should I build Donations API here?

  


end