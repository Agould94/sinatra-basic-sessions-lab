require_relative 'config/environment'

class App < Sinatra::Base
    set :views, settings.root + '/5:3-5:7/sinatra-basic-sessions-lab/views'
    configure do
        enable :sessions
        set :session_secret, "secret"
    end
    get '/' do
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
end