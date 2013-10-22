require 'spec_helper.rb'

describe Rsack::Server do

	def server
		Rack::MockRequest.new(Rsack::Server.new)
	end
	
	context '/' do
		it "should return a 200 code" do
			response = server.get('/')
			response.status.should == 200
		end
		
		it "should include Jugando a -> Piedra, Papel o Tijeras" do
			response = server.get('/')
			response.body.should include ("Jugando a -> Piedra, Papel o Tijeras")
		end
	end
end
