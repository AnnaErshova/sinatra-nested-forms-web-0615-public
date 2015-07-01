require './environment'

module FormsLab
  class App < Sinatra::Base

    # index
    get '/' do
      erb :'/root'
    end

    # new
    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = params[:pirate] # this is in leiu of creating a new instance of a Pirate class
      erb :'/pirates/show'
    end

  end # end class
end # end module