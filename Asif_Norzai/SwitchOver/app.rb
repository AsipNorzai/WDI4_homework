require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg' #to connect postgress

require_relative 'db_config'
require_relative 'models/user'
require_relative 'models/post'

enable :sessions

helpers do
  def link(label, href)
    "<a href='#{ href }'>#{label}</a>"
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end
end


get '/' do

  params[:post_id]

  @post = Post.all

  erb :index
end

get 'posts/:id' do
  @post = Post.find(params[:id])
end
