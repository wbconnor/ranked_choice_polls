class User < ApplicationRecord
    has_many :ranks
    has_many :ranked_polls, through: :ranks, source: :poll
    has_many :created_polls, class_name: 'Poll', foreign_key: 'user_id'
end
