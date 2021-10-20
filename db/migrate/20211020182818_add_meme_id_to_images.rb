class AddMemeIdToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :meme_id, :integer
  end
end
