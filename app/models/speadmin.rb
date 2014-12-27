class Speadmin < ActiveRecord::Base
  belongs_to :specol
  has_many :users

  validates :specol_id, presence: true
  validates :user_id, presence: true
end
