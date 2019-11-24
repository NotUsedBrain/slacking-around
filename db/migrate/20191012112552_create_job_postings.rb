class CreateJobPostings < ActiveRecord::Migration[6.0]
  def change
    create_table :job_postings do |t|
      t.text :content
      t.datetime :start_time
      t.datetime :end_time
      t.float :hourly_rate
      t.integer :employer_id
    end
  end
end
