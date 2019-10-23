class AddTimestampsToFeedback < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :created_at, :datetime
    add_column :feedbacks, :updated_at, :datetime
  end
end
