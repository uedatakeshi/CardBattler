require 'sinatra'
require 'sinatra/reloader'
require 'json'

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

get '/:name' do |n|
	@name = n
	erb :index
end
=end


get '/card.json' do
	content_type :json
	{:card1 => {name: 'ピカチュウ', hp: "100"}, :card2 => {name: 'ポカブ', hp: "200"}, :card3 => {name: 'ツタージャ', hp: "300"}}.to_json
end

