class RemoveCableProviderIdFromInternets < ActiveRecord::Migration[5.1]
  def change

    change_table(:internets) do |t|

      t.remove :cable_provider_id

    end
  end
end
