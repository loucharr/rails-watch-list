 class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmark.all
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(list_params)
       @list = List.find(params[:list_id])
      @list.bookmark = @list
      if @bookmark.save
        redirect_to list_bookmarks(@list)
      else
        render :new
      end

   def destroy
          @bookmark = Bookmark.find(params[:id])
          @bookmark.destroy
          redirect_to restaurant_path(@bookmark.list)
        end
  end

private
def bookmark_params
     params.require(:bookmarks).permit(:content)
end
end
