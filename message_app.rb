require 'pry'
require 'sinatra/base'
require './lib/message'
require './config/data_mapper'

class MessageBoard < Sinatra::Base
  enable :sessions
  enable :method_override

  ENV['RACK_ENV'] ||= 'development'

  get '/' do
    @messages = Message.all
    erb :index
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    erb :messages
  end

  get '/messages/:id/edit' do
    @message = Message.get(params[:id])
    erb :edit
  end

  # post
  post '/message' do
    Message.create(text: params[:message])
    redirect '/'
  end

  #put
  put '/message/:id' do |id|
    @message = Message.get(params[:id])
    @message.update!(params[:message])

    redirect "/"
  end

  run! if app_file == $0
end
