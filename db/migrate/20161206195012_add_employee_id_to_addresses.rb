class AddEmployeeIdToAddresses < ActiveRecord::Migration[5.0]
  def change
    rename_column :addresses, :user_id, :employee_id
  end
end
