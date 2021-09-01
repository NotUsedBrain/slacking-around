class AddBioToEmployeeProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :employee_profiles, :bio, :text
  end
end
