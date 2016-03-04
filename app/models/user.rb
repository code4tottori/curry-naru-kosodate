class User < ApplicationRecord
  enum child_gender: %i(male female)

  def authenticate? password
    self.password == password
  end
end
