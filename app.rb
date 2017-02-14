require 'sinatra'
require_relative 'coins.rb'

get '/' do
	erb :change_input, :locals => {results: '', coins: ''}
end

post '/coins' do
	coins = params[:change]
	results = coin_changer(coins)
	erb :change_input, :locals => {results: results, coins: coins}

end