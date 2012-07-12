require 'sinatra'

get '/' do
    erb :modernizer
end

get '/log' do
    s = Support.new(params['support'], request)
    puts s.to_s

    cache_control :no_cache, :max_age => 0
    content_type 'image/gif'
    IO.read('app/public/1px.gif')
end

