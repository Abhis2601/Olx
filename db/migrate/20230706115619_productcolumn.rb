class Productcolumn < ActiveRecord::Migration[7.0]
  def change
    add_column :products,:category ,:string
    add_column :products,:alphanumeric_id ,:string
    add_column :products,:price ,:integer
    add_column :products,:description ,:text
    # add_column :users,:category ,:string

  end
end
