class CreateInternets < ActiveRecord::Migration[5.1]
  def change
    create_table :internets do |t|

      t.string :cable_provider
      t.string :number_computers
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :best_time
      t.string :best_way
      t.string :business_name
      t.string :business_phone
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :interested

      t.timestamps
    end
  end
end
