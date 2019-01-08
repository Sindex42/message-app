require 'pry'
require 'sinatra/base'
require './lib/message'
require './lib/tag'
require './config/data_mapper'

class MessageBoard < Sinatra::Base
  enable :sessions
  enable :method_override

  ENV['RACK_ENV'] ||= 'development'

  # display all messages
  get '/' do
    @messages = Message.all
    erb :index
  end

  # display one message
  get '/message/:id' do
    @message = Message.get(params[:id])
    erb :show
  end

  # edit one message
  get '/message/:id/edit' do
    @message = Message.get(params[:id])
    erb :edit
  end

  # POST
  # create one message
  post '/message' do
    message = Message.create(text: params[:message])
    tag = Tag.first_or_create(name: params[:tag])
    message.tags << tag
    message.save

    redirect '/'
  end

  # PUT
  # update one message
  put '/message/:id' do
    @message = Message.get(params[:id])
    @message.update!(params[:message])

    redirect '/'
  end

  # DELETE
  # delete one message
  delete '/message/:id' do
    Message.get(params[:id]).destroy
    redirect '/'
  end

  run! if app_file == $0
end
