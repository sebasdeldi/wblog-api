class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :status, default: 0, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
