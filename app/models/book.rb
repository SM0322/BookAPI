class Book < ApplicationRecord
  self.primary_key = "isbn"
  has_many :rates, dependent: :destroy
end
