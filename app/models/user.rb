class User < ApplicationRecord
    has_many :microposts
    # validates :email, presence: true
end
