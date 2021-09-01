class AddCreatedAtToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :created_at, :datetime
  end
end
