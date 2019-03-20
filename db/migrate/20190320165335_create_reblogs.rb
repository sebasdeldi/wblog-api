class CreateReblogs < ActiveRecord::Migration[5.1]
  def change
    create_table :reblogs do |t|
      t.references :post, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
