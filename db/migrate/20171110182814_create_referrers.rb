class CreateReferrers < ActiveRecord::Migration[5.1]
  def change

    create_table :referrers do |t|
      t.string :name
      t.integer :zorder
      t.timestamps
    end

    add_column :internets, :referrer_id, :integer

    add_column :voips, :referrer_id, :integer

  end
end
