class Software < ApplicationRecord
  has_many :pc_software
  has_many :pc, through: :pc_software
end
