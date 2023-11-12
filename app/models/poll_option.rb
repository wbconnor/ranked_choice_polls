class PollOption < ApplicationRecord
  belongs_to :poll
  belongs_to :option
end
