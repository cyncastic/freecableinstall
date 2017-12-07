class AddDefaultToReferreres < ActiveRecord::Migration[5.1]
  def change

    change_column :internets, :other_referrer, :string, :default => 'None'
    change_column :voips,     :other_referrer, :string, :default => 'None'

  end
end
