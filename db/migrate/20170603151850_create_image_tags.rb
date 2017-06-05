class CreateImageTags < ActiveRecord::Migration[5.1]
  def change
    create_table :image_tags do |t|
      t.belongs_to :image, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
