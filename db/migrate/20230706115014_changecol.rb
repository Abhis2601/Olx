class Changecol < ActiveRecord::Migration[7.0]
  def change
    rename_column :users ,:name ,:first_name
    add_column :users ,:last_name,:string
    add_column :users ,:mobile_no,:integer
  end
end
