class AddUserIdToPost < ActiveRecord::Migration[6.0]
  def change
    change_table :page_posts do |t|
      t.belongs_to :user
    end
  end
end
