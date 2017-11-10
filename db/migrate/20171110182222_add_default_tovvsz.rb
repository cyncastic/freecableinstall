class AddDefaultTovvsz < ActiveRecord::Migration[5.1]
  def change
     change_column :voips, :quantity_vvx301, :integer, default: 0
     change_column :voips, :quantity_vvx401, :integer, default: 0
  end
end
