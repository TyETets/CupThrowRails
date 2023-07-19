class ApplicationController < ActionController::Base
	include SessionsHelper
	
	def hello_world
		render html: "hello, world!"
	end
end
