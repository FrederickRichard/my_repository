class CreateNationalAverages < ActiveRecord::Migration
  def change
    create_table :national_averages do |t|
      t.string :major, null: false, default: ""
      t.integer :high_earning, null: false, default: 0
      t.integer :low_earning, null: false, default: 0
      t.integer :median_earning, null: false, default: 0
      t.integer :offer_rate, null: false, default: 0
      t.timestamps null: false
    end
  end
end
