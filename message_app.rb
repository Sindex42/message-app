require 'sinatra/base'

class MessageBoard < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    @message = session[:message]
    erb :index
  end

  post '/message' do
    session[:message] = params[:message]
    redirect '/'
  end

  run! if app_file == $0
end
