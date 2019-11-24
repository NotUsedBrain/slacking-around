class AddDiscardedAtToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :discarded_at, :datetime
    add_index :job_applications, :discarded_at
  end
end
