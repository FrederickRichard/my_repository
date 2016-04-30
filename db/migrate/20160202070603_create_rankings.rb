class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.string :name, null: false, default: ""
      t.integer :ranking, null: false
      t.timestamps null: false
    end
  end
end
