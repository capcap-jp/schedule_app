class AddAllDayToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :all_day, :string
  end
end
