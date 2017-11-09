class AddColumnOtherProviderToInternets < ActiveRecord::Migration[5.1]
  def change
    add_column :internets, :other_provider, :string
  end
end
