class AddColumnOtherReferrerToInternets < ActiveRecord::Migration[5.1]

  def change
    add_column :internets, :other_referrer, :string
    add_column :voips, :other_referrer, :string
  end

end
