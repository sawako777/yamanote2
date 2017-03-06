class AddYamanameIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :yamaname_id, :integer
  end
end
