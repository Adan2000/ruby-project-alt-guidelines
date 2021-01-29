class User < ActiveRecord::Base
    has_many :sessions
    has_many :trainers, through: :sessions
end

