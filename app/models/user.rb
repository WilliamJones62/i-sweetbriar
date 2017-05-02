class User < ApplicationRecord
  validates :token, presence: true, uniqueness: true
  validates :lesson, presence: true
end
