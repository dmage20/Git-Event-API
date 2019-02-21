class CreateRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :repositories do |t|
      t.integer :repository_id
      # t.index :repository_id

      t.timestamps
    end
  end
end
