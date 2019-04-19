require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $p1 = Player.new(params[:p1_name])
    $p2 = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    @p1_hp = $p1.hp
    @p2_hp = $p2.hp
    erb :play
  end

  post '/attack' do
    $p1.attack($p2)
    redirect '/result'
  end

  get '/result' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    @p1_hp = $p1.hp
    @p2_hp = $p2.hp
    erb :result
  end





  run! if app_file == $0
end
