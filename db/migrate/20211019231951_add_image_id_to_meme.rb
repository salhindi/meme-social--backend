class AddImageIdToMeme < ActiveRecord::Migration[6.1]
  def change
    add_column :memes, :image_id, :integer
  end
end
