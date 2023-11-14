class Rank < ApplicationRecord
  belongs_to :user
  belongs_to :poll_option
  has_one :poll, through: :poll_option
end
