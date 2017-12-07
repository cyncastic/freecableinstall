class AddDefaultToReferrerId < ActiveRecord::Migration[5.1]
  def change

    change_column :internets, :referrer_id, :integer, :default => '9999'
    change_column :voips,     :referrer_id, :integer, :default => '9999'

  end
end
