class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start_day
      t.date :finish_day
      t.text :schedule_memo

      t.timestamps
    end
  end
end
