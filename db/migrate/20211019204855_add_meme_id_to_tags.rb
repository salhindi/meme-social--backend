class AddMemeIdToTags < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :meme_id, :integer
  end
end
