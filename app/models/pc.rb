class Pc < ApplicationRecord
  has_many :pc_software
  has_many :software, through: :pc_software
  belongs_to :employee
end
