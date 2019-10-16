class CreateSols < ActiveRecord::Migration[5.2]
  def change
    create_table :sols do |t|
      t.string :photo
      t.string :nom
      t.integer :prix

      t.timestamps
    end
  end
end
