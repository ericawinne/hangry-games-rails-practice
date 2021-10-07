class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.integer :game_id
      t.integer :person_id
      
      t.timestamps
    end
  end
end
