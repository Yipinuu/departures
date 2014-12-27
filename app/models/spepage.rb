class Spepage < ActiveRecord::Base
  belongs_to :specol
  has_many :articles, dependent: :destroy

  validates :pagename, presence: true
  validates :specol_id, presence: true
end
