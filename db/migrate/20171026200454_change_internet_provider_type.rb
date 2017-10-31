class ChangeInternetProviderType < ActiveRecord::Migration[5.1]
  def change

    change_table(:internets) do |t|
      t.belongs_to :provider

      t.remove :cable_provider
      t.integer :cable_provider_id
    end

  end
end
