class Remcol < ActiveRecord::Migration[7.0]
  def change
    remove_column :products ,:image,:binary
  end
end
