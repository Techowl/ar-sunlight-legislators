require_relative 'app/models/congressperson'

print "Creating database..."
%x(rake db:create)
puts
print "Migrating database..."
%x(rake db:migrate)
print "...migrated!\n"
puts
print "Importing data..."
%x(ruby lib/sunlight_legislators_importer.rb db/data/legislators.csv)
print "...imported!\n"
puts
