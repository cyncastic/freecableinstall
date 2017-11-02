class RemoveproviderIdFromInternets < ActiveRecord::Migration[5.1]

  def change

    change_table(:internets) do |t|

      t.remove :provider_id

    end

  end

end

