class CreateBuilds < ActiveRecord::Migration
  def change
    create_table :builds do |t|
      t.integer :project_id
      t.string :status
      t.string :finished_at
      t.string :trace, :limit => 10485760 # 10MB
      t.string :commit_sha
      t.string :branch
      t.timestamps
    end

    add_index :builds, :project_id
  end
end
