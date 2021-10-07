class Role < ApplicationRecord
  belongs_to :game
  belongs_to :person

  validates :occupation, inclusion: { in: %w(Tribute MC Game\ Master Coach Designer) }
end
