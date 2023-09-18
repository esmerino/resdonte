class Chat < ApplicationRecord
  has_many :messages, dependent: :destroy
  default_scope { order(created_at: :desc) }
end
