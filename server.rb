require 'sinatra/base'
require 'uri'
require 'json'

class GateThree < Sinatra::Base
	ENV['CONGRATULATIONS_YOU_HAVE_SOLVED_THE_THIRD_GATE_HERES_THE_KEY'] = "moshi"

	get '/' do
		execute(params[:code]).to_json
	end

	def execute(code)
		eval(code).to_s
	end

end
