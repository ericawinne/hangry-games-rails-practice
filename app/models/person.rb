class Person < ApplicationRecord
  has_many :roles
  has_many :games, through: :roles
end
