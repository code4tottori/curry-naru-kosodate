# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'yaml'

nurseries = <<-EOD
-
  name: 市立◯◯保育所
  address: 鳥取市××
  phone: 0857-17-7890
  business_hours: 月曜-土曜、9:00-17:00
  capacity: 4
  condition: 特になし
  fee: 500円
  things: 着替え
  medical_system: ◯◯病院併設
  comment: 
-
  name: 私立△△保育所
  address: 鳥取市××
  phone: 0857-17-7654
  business_hours: 月曜-土曜、8:00-17:00
  capacity: 5
  condition: 特になし
  fee: 800円
  things: 着替え
  medical_system: 看護師ｘｘ名
  comment: 
EOD
YAML.load(nurseries).each { |n| Nursery.create n }

User.create(user_id: "test", password: "test", name: "鳥取太郎", email: "test@example.com", child_name: "鳥取一郎", child_birthdate: "2015-03-05", child_gender: "male")
