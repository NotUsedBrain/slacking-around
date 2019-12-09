class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :employer_id
      t.string :employee_profile_id

      t.timestamps
    end
    add_index :comments, :employer_id
    add_index :comments, :employee_profile_id
  end
end
