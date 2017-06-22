class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :url
      t.string :name
      t.integer :votecount, :default => 0

      t.timestamps
    end
  end
end
