require 'rubygems'
require 'sinatra'
require 'pony'
require 'sass'
require 'haml'
require 'thin'

#--------------------------------------------------------
# utf-8 outgoing filter
#--------------------------------------------------------
before do
 headers "Content-Type" => "text/html; charset=utf-8"
end


#--------------------------------------------------------
# Page routes
#--------------------------------------------------------

get "/" do
  @title = "Home"
  haml :home
end

get "/index" do
  @title = "Home"
  haml :index
end