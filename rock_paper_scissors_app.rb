require 'sinatra/base'
require_relative './lib/game.rb'

class RockPaperScissorsApp < Sinatra::Base

  enable :sessions
  set :session_secret, "secret"

  get '/' do
    erb :index
  end

  post '/get_name' do
    @game = Game.new(params[:name].capitalize)
    redirect '/play'
  end

  before do
    @game = Game.load
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.rock
    if @game.end?
      redirect '/finish'
    else
      redirect '/play'
    end
  end

  post '/paper' do
    @game.paper
    if @game.end?
      redirect '/finish'
    else
      redirect '/play'
    end
  end

  post '/scissors' do
    @game.scissors
    if @game.end?
      redirect '/finish'
    else
      redirect '/play'
    end
  end

  get '/finish' do
    erb :gameover
  end

  run! if app_file == $0
end
