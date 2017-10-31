class AddTypeInternetToInternets < ActiveRecord::Migration[5.1]
  def change


    change_table(:internets) do |t|

      t.boolean :want_internet
      t.boolean :want_television
      t.boolean :want_phone

    end

  end
end
