require 'sinatra/base'
require 'uri'

class GateThree < Sinatra::Base

	get '/' do
		code = params[:code]
		p 'a'*100
		p code.to_s
		
		# code = URI.escape(code)

		p ''*100		
		# p code.gsub('\n', ';').to_s
		execute(code)
	end

	def execute(code)
		eval(code).to_s
	end

	def hello
		"hellgeg"
	end

end