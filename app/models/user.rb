class User < ApplicationRecord
  enum child_gender: %i(male female)
  has_many :applications

  def authenticate? password
    self.password == password
  end
end
