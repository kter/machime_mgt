class Employee < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true
  has_many :pc

  def full_name
    first_name + " " + last_name
  end
end
