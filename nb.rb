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
  @title = "Welcome to my site"
  haml :home
end