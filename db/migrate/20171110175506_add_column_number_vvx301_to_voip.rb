class AddColumnNumberVvx301ToVoip < ActiveRecord::Migration[5.1]
  def change

    add_column :voips, :quantity_vvx301, :integer

    rename_column :voips, :number_phones, :quantity_vvx401

  end
end
