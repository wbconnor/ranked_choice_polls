class PollOption < ApplicationRecord
  belongs_to :poll
  belongs_to :option
  has_many :ranks
end
