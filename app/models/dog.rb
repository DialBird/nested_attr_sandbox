class Dog < ApplicationRecord
  ATTRIBUTES = %i[id _destroy name].freeze

  belongs_to :user
end
