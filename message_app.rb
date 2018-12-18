require 'sinatra/base'
require './lib/message'
require './lib/history'

class MessageBoard < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    session.clear
    session[:history] = History.new
    redirect '/log'
  end

  get '/log' do
    @history = session[:history]
    erb :index
  end

  post '/message' do
    #session[:message] = Message.new(params[:message])
    @history = session[:history]
    @history.add(Message.new(params[:message]))
    redirect '/log'
  end

  run! if app_file == $0
end
