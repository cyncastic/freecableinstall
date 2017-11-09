class RenameColumnOrderInProviders < ActiveRecord::Migration[5.1]
  def change
    rename_column :providers, :order, :zorder
  end
end
