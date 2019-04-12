require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "our_secret"
    register Sinatra::Flash
  end

  get "/" do
    flash[:hello_world] = "hello world!"
    erb :welcome
  end

end
