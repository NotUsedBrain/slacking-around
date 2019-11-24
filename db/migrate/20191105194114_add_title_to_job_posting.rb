class AddTitleToJobPosting < ActiveRecord::Migration[6.0]
  def change
    add_column :job_postings, :title, :string
  end
end
