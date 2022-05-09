require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require './environments'

class Article < ActiveRecord::Base
end

get '/' do
  erb :home
end

get '/api/health' do
  'Ok'
end

post '/api/articles' do
  article = Article.new(params)

  if article.save
    article.to_json
  else
    status 500
  end
end

get '/api/articles' do
  content_type :json

  articles = Article.order('created_at DESC')
  articles.to_json
end
