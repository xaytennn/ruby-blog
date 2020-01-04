class AddImageToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :page_posts, :image, :string
  end
end
