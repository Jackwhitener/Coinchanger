require 'sinatra'
require_relative 'coinchanger.rb'
get '/' do
	erb :home
end
post '/home' do
	coin =  params[:coin]
	change = coinage(coin)
	redirect '/result?coin=' + coin + '&change=' + change.to_s
end
get '/result' do
coin = params[:coin]
change = eval(params[:change])
erb :result, locals: {coin: coin, change: change}
end