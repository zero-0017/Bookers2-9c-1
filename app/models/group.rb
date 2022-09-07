class Group < ApplicationRecord
  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users# userは、group_usersという中間テーブルを通じてgroupsにアクセスできるという記述

  validates :name, presence: true
  validates :introduction, presence: true
  has_one_attached :image
end
