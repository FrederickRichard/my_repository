class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, null: false, default: ""
      t.string :major, null: false, default: ""
      t.integer :high_earning, null: false, default: 0
      t.integer :low_earning, null: false, default: 0
      t.integer :median_earning, null: false, default: 0
      t.integer :offer_rate, null: false, default: 0
      t.integer :major_ranking, null: false, default: 0
      t.integer :tuition, null: false, default: 0
      t.integer :living_expense, null: false, default: 0
      t.timestamps null: false
    end
  end
end
