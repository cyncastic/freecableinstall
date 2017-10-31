class Addnumberofthings < ActiveRecord::Migration[5.1]
  def change

    change_table(:internets) do |t|

      t.integer :number_televisions
      t.integer :number_phones

    end

  end
end
