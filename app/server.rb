
require 'sinatra'

get '/' do
    erb :modernizer
end

get '/log' do
    
    f = params[:support].split(',')
    f << 'navigator.userAgent:' + request.env['HTTP_USER_AGENT']

    puts '%27s' % '---'
    
    f.map { |test|
        tokens = test.split(':')
        puts "%25s %s" % [ tokens.first, tokens[1] ]
    }

    puts '%27s' % '---'
   
    cache_control :no_cache, :max_age => 0
    content_type 'image/gif'
    IO.read('app/public/1px.gif')

end

