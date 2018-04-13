class AddDirStrRefToFileStr < ActiveRecord::Migration[5.1]
  def change
    add_reference :file_strs, :dir_str, foreign_key: true
  end
end
