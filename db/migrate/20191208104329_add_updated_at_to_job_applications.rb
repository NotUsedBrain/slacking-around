class AddUpdatedAtToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :updated_at, :datetime
  end
end
