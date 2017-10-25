class CreateVoips < ActiveRecord::Migration[5.1]
  def change
    create_table :voips do |t|
      t.string :phone_choice
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :business_name
      t.string :number_phones
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :best_time
      t.string :best_way
      t.boolean :also_interested

      t.timestamps
    end
  end
end
