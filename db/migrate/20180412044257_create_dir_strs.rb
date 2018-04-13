class CreateDirStrs < ActiveRecord::Migration[5.1]
  def change
    create_table :dir_strs do |t|
      t.string :name
      t.string :parent_dir
      t.string :owner

      t.timestamps
    end
  end
end
