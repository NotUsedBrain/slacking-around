class CreateEmployerProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :employer_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :business_name

      t.timestamps
    end
  end
end
