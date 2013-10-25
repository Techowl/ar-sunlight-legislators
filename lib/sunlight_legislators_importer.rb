require 'csv'
require_relative '../app/models/congressperson'
require_relative '../app/models/state'

class SunlightLegislatorsImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      attributes = {}
      state_name = nil
      row.each do |field, value|
        case field
        when 'state'
          state_name = value
        when 'phone'
          value = value.scan(/\d/).join.to_i
          attributes[field.to_sym] = value
        else
          attributes[field.to_sym] = value
        end
      end
      new_state = State.create(name: state_name)
      State.find_each do |state|
        if state.name == state_name
          state.congresspeople.create(attributes)
        end
      end
    end
  end
end

# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
begin
  raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
  SunlightLegislatorsImporter.import(ARGV[0])
rescue ArgumentError => e
  $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
rescue NotImplementedError => e
  $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
end
