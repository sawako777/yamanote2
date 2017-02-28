class Yamaname < ActiveRecord::Migration
  def change
    create_table :yamaname do |t|
      t.text        :yamaname
      t.timestamps
    end
  end
end
