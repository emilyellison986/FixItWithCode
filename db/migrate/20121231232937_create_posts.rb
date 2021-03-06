class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.boolean :approved, default: false
      t.integer :administrator_id

      t.timestamps
    end
  end
end
