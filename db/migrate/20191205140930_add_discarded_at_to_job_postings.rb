class AddDiscardedAtToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :discarded_at, :datetime
    add_index :job_postings, :discarded_at
  end
end
