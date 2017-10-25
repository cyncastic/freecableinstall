class ChangeNumberFormatInVoip < ActiveRecord::Migration[5.1]

  def change

    remove_column :voips, :number_phones

    add_column :voips, :number_phones, :integer

  end

end
