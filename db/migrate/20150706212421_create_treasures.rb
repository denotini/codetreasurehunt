class CreateTreasures < ActiveRecord::Migration
  def change
    create_table :treasures do |t|
      t.text :description
      t.string :status

      t.timestamps null: false
    end
  end
end
