class CreateFeedLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :feed_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cat, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
