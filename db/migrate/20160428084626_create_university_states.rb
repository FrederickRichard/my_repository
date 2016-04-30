class CreateUniversityStates < ActiveRecord::Migration
  def change
    create_table :university_states do |t|
    	t.string :university_name, null: false, default: ""
      t.string :states, null: false, default: ""
    end
  end
end
