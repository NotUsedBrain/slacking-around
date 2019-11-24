class AddEmployeeIdToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :employee_profiles, :employee_id, :integer
  end
end
