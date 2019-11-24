class AddEmployerIdToEmployerProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :employer_profiles, :employer_id, :integer
  end
end
