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
  erb :recipes
end
