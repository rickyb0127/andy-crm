class User < ActiveRecord::Base
  has_secure_password
  validates :email, uniqueness: true

  def full_name
    self.first_name.capitalize + " " + self.last_name.capitalize
  end
end
