
require 'sinatra'

get '/' do
    erb :modernizer
end

get '/log' do
    params[:support].split(',').each do |test|
        tokens = test.split(':')
        puts "%s \t %s" % [ tokens.first, tokens[1] ]
    end
    # FIXME return something
end

