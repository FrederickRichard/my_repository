class DeleteLivingexpense < ActiveRecord::Migration
  def change
  	change_table :schools do |t|
		  t.remove :tuition, :living_expense
		end
  end
end
# class AddTuitionsLivingexpense < ActiveRecord::Migration
#   def change
# 		add_column :schools, :In_State_tuition, :string, null: false, default: 0
# 		add_column :schools, :Out_State_tuition, :string, null: false, default: 0
# 		add_column :schools, :living_expense, :integer,	 null: false, default: 0
# 		add_column
#   end
# end
