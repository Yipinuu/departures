class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :specol
  belongs_to :spepage

  validates :title, presence: true,
                    length: { maximum: 77 }
  validates :content, presence: true,
                      length: { minimum: 10 }
  validates :user_id, presence: true
  validates :specol_id, presence: true
  validates :spepage_id, presence: true
end
