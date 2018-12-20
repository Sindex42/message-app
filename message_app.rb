require 'data_mapper'
require 'pry'
require 'sinatra/base'
require './lib/message'

require './config/data_mapper'

class MessageBoard < Sinatra::Base
  enable :sessions

  get '/' do
    @messages = Message.all
    erb :index
  end

  post '/message' do
    Message.create(text: params[:message])
    redirect '/'
  end

  get '/messages/:id' do
    @messages = Message.all
    @id = params[:id]
    erb(:messages)
  end

  run! if app_file == $0
end
