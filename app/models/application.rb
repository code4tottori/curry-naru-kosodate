class Application < ApplicationRecord
  enum status: %i[appointed waiting canceled]

  belongs_to :user
  belongs_to :nursery
end
