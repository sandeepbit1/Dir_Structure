class DirStr < ApplicationRecord
  has_many :file_strs, dependent: :destroy
  validates :name, presence: true,
                  length: { minimum: 3 }
  validates :parent_dir, presence: true,  length: { minimum: 3 }
  validates :owner, presence: true, length: { minimum: 3 }

end
