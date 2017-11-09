class AddColumnOrderToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :order, :integer, default: 0
  end
end
