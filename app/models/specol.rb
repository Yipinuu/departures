class Specol < ActiveRecord::Base
  belongs_to :user
  belongs_to :experiment, dependent: :destroy
  has_many :spepages, dependent: :destroy
  has_many :speadmins, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :leavemessages, dependent: :destroy


  validates :title, presence: true
  validates :user_id, presence: true
  validates :modify, presence: true
end
