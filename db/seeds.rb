# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Hotels extension
Refinery::Hotels::Engine.load_seed

# Added by Refinery CMS CorpPartners extension
Refinery::CorpPartners::Engine.load_seed

# Added by Refinery CMS Contacts extension
 Refinery::Contacts::Engine.load_seed

# Added by Refinery CMS Blog engine
Refinery::Blog::Engine.load_seed

# Added by Refinery CMS Exhibitors extension
Refinery::Exhibitors::Engine.load_seed

# Added by Refinery CMS Cooperations extension
Refinery::Cooperations::Engine.load_seed
