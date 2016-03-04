class User < ApplicationRecord
  enum child_gender: %i(male female)
end
