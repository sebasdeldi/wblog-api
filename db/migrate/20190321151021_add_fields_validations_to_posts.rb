class AddFieldsValidationsToPosts < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :description, :string, limit: 400
    add_index :posts, :title, unique: true
  end
end
