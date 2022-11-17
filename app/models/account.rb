class Account < ApplicationRecord
    validates :users, presence: true
end
