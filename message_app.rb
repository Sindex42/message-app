require 'sinatra/base'

class MessageBoard < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/message' do
    @message = params[:message]
    erb :message
  end

  run! if app_file == $0
end
