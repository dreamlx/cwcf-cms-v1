namespace :init_db do

  require 'csv'

  if defined? Encoding::Converter
    $ec1 = Encoding::Converter.new("GBK", "UTF-8", :universal_newline => true)
  else
    puts "this can not be down by ruby under 1.9.3"
  end

  desc "init role in db"
  task init_role: :environment do
    roles = %w(normal journalist exhibitor)
    roles.each do |role|
      refine_role = Refinery::Role.new()
      refine_role.camelize_title(role)
      refine_role.save!
    end
  end

# 序号 logo名称 品牌显示名称 简介
  desc "import exhibitor to database"
  task import_exhibitor: :environment do
    $index = 0
    CSV.foreach("/home/deploy/a.csv") do |row|
      $index += 1;
      unless $index == 1
        ex_ = Refinery::Exhibitors::Exhibitor.new(title: row[2], logo: row[1], description: row[3]);
        ex_.year = Time.new.year;
        ex_.save!
      end
    end
  end
end
