class AddColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :status, :string
    add_column :products, :image, :binary
  end
end
