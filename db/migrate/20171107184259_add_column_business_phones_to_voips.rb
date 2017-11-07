class AddColumnBusinessPhonesToVoips < ActiveRecord::Migration[5.1]
  def change
    add_column :voips, :business_phone, :string
  end
end
