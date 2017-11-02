class AddColumnProviderIdToInternets < ActiveRecord::Migration[5.1]
  def change
    add_column :internets, :provider_id, :integer
  end
end
