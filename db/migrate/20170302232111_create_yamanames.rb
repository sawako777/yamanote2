class CreateYamanames < ActiveRecord::Migration
  def change
    create_table :yamanames do |t|
      t.string :mountain_name
      t.timestamps null: false
    end
  end
end
