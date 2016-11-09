require 'sinatra/base'
require 'uri'

class GateThree < Sinatra::Base

	get '/' do
		code = params[:code]
		ENV['CONGRATULATIONS_YOU_HAVE_SOLVED_THE_THIRD_GATE_HERES_THE_KEY'] = "moshi"
		execute(code)
	end

	def execute(code)
		eval(code).to_s
	end

end
