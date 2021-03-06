class Leavemessage < ActiveRecord::Base
  belongs_to :user
  belongs_to :specol

  validates :message, presence: true, length: { minimum: 2 }
  validates :specol_id, presence: true
  validates :user_id, presence: true
end
