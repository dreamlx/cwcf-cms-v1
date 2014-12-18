namespace :init_db do

  require 'csv'

  if defined? Encoding::Converter
    $ec1 = Encoding::Converter.new("GBK", "UTF-8", :universal_newline => true)
  else
    puts "this can not be down by ruby under 1.9.3"
  end

  class String
    def to_uft8
      return $ec1.convert self
    end
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
  
  desc "set default blanks"
  task default_blank_status: :environment do
    Blank.all.each do |blank|
      if blank.status.blank?
        blank.status = "applied"
      end
    end
  end

  desc "init test products"
  task init_test_products: :environment do
    for i in 1..60 do
      Product.create!(number: i, status: "free")
    end
  end

  desc "init products"
  task init_products_1: :environment do
    Product.destroy_all
    CSV.foreach("/Users/Zwm/Downloads/a/1.csv") do |row|
      row.each do |item|
        unless item.nil?
          Product.create!(number: item, status: "free")
        end
      end
    end
  end

  desc "init products"
  task init_products_2: :environment do
    CSV.foreach("/Users/Zwm/Downloads/a/9.csv") do |row|
      row.each do |item|
        unless item.nil?
          Product.create!(number: item, status: "free")
        end
      end
    end
  end

end
