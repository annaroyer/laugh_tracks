class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.where(params)
    erb :"/comedians/index"
  end

end
