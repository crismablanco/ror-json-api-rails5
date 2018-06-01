class User < ApplicationRecord
  has_many :rental_units, foreign_key: :user_id, dependent: :destroy
  # Validations
  validates_presence_of :name, :email
end
