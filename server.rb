require 'sinatra'
require_relative 'recipe'

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

get '/recipes/:id' do
  @id = params[:id]
  erb :recipe
end

get '/recipes' do
  @title = 'Recipes'
  @recipe = Recipe.find(params[:id])
    erb :recipes

end
#   @id = params[:id]
#   # Params ia a magic hash... it exists in Sinatra
#   # This is where Sinatra saves the data that goes into the wildcard
#   # [:id] is a wilcard to avoid repetitive code
#
#   @recipes = {
#     '1' =>  'Avocado Sushi',
#     '2' => 'BBQ Ribs',
#     '3' => 'Gluten-Free Cookies'
#   }
#
# end
