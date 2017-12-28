class CreateResellers < ActiveRecord::Migration[5.1]
  def change
    create_table :resellers do |t|

      t.timestamps

      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :best_time
      t.string :best_way

    end
  end
end
