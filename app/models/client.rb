class Client < ActiveRecord::Base
  belongs_to :user
  validates :address, uniqueness: true

  def fill_street
    "#{self.address} Oak Street, Traverse, City 02347"
  end

  def full_name
    self.first_name.capitalize + " " + self.last_name.capitalize
  end
end
