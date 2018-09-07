class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes/' do
  end

  get '/recipes' do
    @recipes = Recipe.all 
  end

  get 'recipes/:id' do
  end

end
