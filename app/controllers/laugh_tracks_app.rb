class LaughTracksApp < Sinatra::Base

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.where(params)
    erb :"/comedians/index"
  end

  get '/comedians/new' do
    erb :"/comedians/new"
  end

  post '/comedians' do
    Comedian.create(params[:comedian])
    redirect :comedians
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :"/comedians/show"
  end

end
