require 'sinatra'
require 'haml'

get '/' do
    haml :index
end

post '/' do
    key = params["public_key"]
    File.open("/home/skipper/.ssh/authorized_keys", "a") do |f|
        f << key
        f << "\n"
    end
    haml :index
end
