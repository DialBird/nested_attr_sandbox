class User < ApplicationRecord
  ATTRIBUTES = %i[name].freeze

  has_many :dogs, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :dogs, allow_destroy: true, reject_if: :all_blank
end
