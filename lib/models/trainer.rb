class Trainer < ActiveRecord::Base
    has_many :sessions
    has_many :users, through: :sessions
end