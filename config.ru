require './nb'

gem 'rack-rewrite', '~> 1.3.1'
require 'rack-rewrite'
    if ENV['RACK_ENV'] == 'production'
        use Rack::Rewrite do
         r301 %r{.*}, 'http://nishbedi.com$&', :if => Proc.new {|rack_env|
        rack_env['SERVER_NAME'] != 'nishbedi.com'
        }
    end
end

run Sinatra::Application