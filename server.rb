require 'sinatra/base'
require 'uri'
require 'json'

class GateThree < Sinatra::Base
	ENV['CONGRATULATIONS_YOU_HAVE_SOLVED_THE_THIRD_PUZZLE_HERES_THE_LAST_KEY'] = "moshi"

	get '/' do
		execute(params[:code]).to_json
	end

	def execute(code)
		eval(code).inspect
	end

	get '/clue_two' do
		418
	end

end
