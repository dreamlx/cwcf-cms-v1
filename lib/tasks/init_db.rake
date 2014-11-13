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

  desc "import exhibitor to database"
  task import_exhibitor: :environment do

  end
end