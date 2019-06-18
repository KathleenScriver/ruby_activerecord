class CreateCatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.integer :owner_id
    end 
  end
end
