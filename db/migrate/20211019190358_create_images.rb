class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.has_attached_file :image

      t.timestamps
    end
  end
end
