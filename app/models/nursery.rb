class Nursery < ApplicationRecord
  has_many :applications

  attr_accessor :applications_count

  def applications_in date
    applications.where(date: date)
  end

  def count_applications date
    @applications_count ||= applications_in(date).count
  end
end
