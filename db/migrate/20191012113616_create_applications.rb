class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.integer :job_posting_id
      t.integer :employee_id
    end
  end
end
