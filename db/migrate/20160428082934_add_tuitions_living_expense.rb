class AddTuitionsLivingExpense < ActiveRecord::Migration
  def change
		add_column :schools, :In_State_tuition, :integer, null: false, default: 0
		add_column :schools, :Out_State_tuition, :integer, null: false, default: 0
		add_column :schools, :living_expense, :integer,	 null: false, default: 0
  end
end
