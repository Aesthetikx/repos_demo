class Repository < ApplicationRecord
  belongs_to :owner, polymorphic: true
end
