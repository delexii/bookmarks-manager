require "sinatra/base"
require "sinatra/reloader"
require_relative "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :method_override

  get "/" do
    erb :index
  end

  post "/add" do
    Bookmark.create(title: params[:title], url: params[:url])
    redirect to ("/")
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmark
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
