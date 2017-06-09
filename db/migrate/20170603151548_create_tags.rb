class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :tag_name
      t.integer :image_id

      t.timestamps
    end
  end
end
