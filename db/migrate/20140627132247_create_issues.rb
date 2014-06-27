class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :book_id
      t.integer :member_id
      t.date :issue_date
      t.date :due_date
      t.boolean :status

      t.timestamps
    end
  end
end
