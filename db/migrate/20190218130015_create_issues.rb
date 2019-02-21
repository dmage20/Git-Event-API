class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.integer :issue_id
      t.string :action
      t.integer :repository_id
      t.string :repository_name
      t.string :owner_name
      # t.references :repository_id, index: true, foreign_key: {to_table: :repositories}
      t.index :repository_id
            
      t.timestamps
    end
  end
end
