class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.integer :job_posting_id
      t.integer :employee_id
      t.integer :rating
      t.text :content
    end
  end
end
