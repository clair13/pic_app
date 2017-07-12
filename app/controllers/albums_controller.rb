class AlbumsController < ApplicationController

  def new
    @album = current_member.albums.new
  end

  def show
    @album = Album.find(params[:id]) 
  end

  def create 
    @album = current_member.albums.create(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :member_id )
  end

end