class AddAlbumImageToImage < ActiveRecord::Migration[5.1]
  def change
    add_attachment :images, :album_image
  end
end
