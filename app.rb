require "sinatra/base"
require "sinatra/reloader"
require_relative "./lib/bookmark"

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post "/add" do
    Bookmark.create(params[:title], params[:url])
    redirect to ("/")
  end

  get "/bookmarks" do
    @bookmarks = Bookmark.all
    erb :bookmark
  end

  run! if app_file == $0
end
