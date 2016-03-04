namespace :db do
  desc "Add nurseries."
  task add_nurseries: :environment do
    require 'yaml'
    data = YAML.load <<-EOD
    -
      name: 市立保育所
      address: 鳥取市○○町
      phone: 0857-17-7890
      business_hours: 月曜-土曜、9:00-17:00
      capacity: 4
      condition: 何か条件
      fee: 500円
      things: 処方箋
      medical_system: 病院併設
      comment: 何か
    EOD
    data.each do |d|
      n = Nursery.new
      %w(name address phone business_hours capacity condition fee things medical_system comment).each do |f|
        n.send "#{f}=", d[f]
      end
      n.save
    end
  end

end
