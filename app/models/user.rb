class User < ActiveRecord::Base
  validates :username, uniqueness: true, length: { minimum: 1 }
  has_secure_password

  has_many :posts, foreign_key: :wall_id

  def to_s
    "#{first_name} #{last_name}"
  end
end
