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
<<<<<<< HEAD
    @history = session[:history]
=======
    session[:messages] ||= []
    @messages = session[:messages]
>>>>>>> b148565
    erb :index
  end

  post '/message' do
<<<<<<< HEAD
    #session[:message] = Message.new(params[:message])
    @history = session[:history]
    @history.add(Message.new(params[:message]))
=======
    session[:messages] << Message.new(params[:message])
>>>>>>> b148565
    redirect '/log'
  end

  run! if app_file == $0
end
