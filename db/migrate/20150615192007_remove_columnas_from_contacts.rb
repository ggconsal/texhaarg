class RemoveColumnasFromContacts < ActiveRecord::Migration
  def change
  	remove_column :contacts, :con_password, :string
  	remove_column :contacts, :con_password2, :string
  	remove_column :contacts, :con_password_confirmacion, :string
  end
end
