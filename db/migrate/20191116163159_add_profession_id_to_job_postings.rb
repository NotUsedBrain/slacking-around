class AddProfessionIdToJobPostings < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :profession_id, :integer
  end
end
