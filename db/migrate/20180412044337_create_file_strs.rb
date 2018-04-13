class CreateFileStrs < ActiveRecord::Migration[5.1]
  def change
    create_table :file_strs do |t|
      t.belongs_to :dir_str, index: true
      t.string :name
      t.string :parent_dir
      t.string :owner
      
      t.timestamps
    end
  end
end
