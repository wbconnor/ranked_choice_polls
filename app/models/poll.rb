class Poll < ApplicationRecord
  belongs_to :user
  has_many :poll_options
  has_many :options, through: :poll_options

  accepts_nested_attributes_for :options
end
