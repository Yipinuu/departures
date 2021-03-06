class User < ActiveRecord::Base
  has_many :specols, dependent: :destroy
  has_many :articles, dependent: :destroy
  has_many :speadmins, dependent: :destroy
  has_many :leavemessages, dependent: :destroy
  belongs_to :experiment, dependent: :destroy

  before_create :create_remember_token
  before_save { self.email = email.downcase}
 
  validates :username, presence: true,
                   length: { minimum: 2 ,maximum: 27 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true, 
                    format: {with: VALID_EMAIL_REGEX },
                    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, length: {minimum: 6}


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end


  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end


end
