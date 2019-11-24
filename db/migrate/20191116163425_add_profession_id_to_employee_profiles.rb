class AddProfessionIdToEmployeeProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :employee_profiles, :profession_id, :integer
  end
end
