require 'sinatra'
require_relative 'coins.rb'

get '/' do
	erb :change_input, :locals => {results: '', message1: ''}
end

post '/coins' do
	coins = params[:change].to_i
	results = coins_to_string(coins)
	erb :change_input, :locals => {results: results, message1: 'Your change is: '}

end