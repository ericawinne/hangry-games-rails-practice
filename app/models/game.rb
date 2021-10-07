class Game < ApplicationRecord
  has_many :roles
  has_many :people, through: :roles
end
