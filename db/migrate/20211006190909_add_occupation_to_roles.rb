class AddOccupationToRoles < ActiveRecord::Migration[6.1]
  def change
    add_column :roles, :occupation, :string
  end
end
