require 'sinatra'
require 'sinatra/reloader'

before do
	logger.info "before"
end

after do
	logger.info "after"
end

helpers do
	include Rack::Utils
	alias_method :h, :escape_html
end
=begin
get '/:name' do
	"hello world #{params[:name]}" 
end

get '/:firstname/:lastname' do |f, l|
	"hello #{f} #{l}"
end

get '/' do
	erb :index
end
=end

get '/:name' do |n|
	@name = n
	erb :index
end