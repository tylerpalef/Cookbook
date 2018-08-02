require 'sinatra'

get '/' do
  redirect to ('/recipes')
end

get '/about' do
 @title = 'About'
 erb :about
end

get '/contact' do
  @title = 'Contact'
  erb :contact
end

get '/legal' do
  @title = 'Legal'
  erb :legal
end

get '/recipes' do
  @title = 'Recipes'

  @recipes = {
    1 =>  'Avocado Sushi',
    2 => 'BBQ Ribs',
    3 => 'Gluten-Free Cookies'
  }
    erb :recipes
end

get '/recipes/1' do
  erb :recipe_1
end

get '/recipes/2' do
  erb :recipe_2
end

get '/recipes/3' do
  erb :recipe_3
end
