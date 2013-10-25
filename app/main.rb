# require_relative 'models/congressperson.rb'

# # def legislators_by_state(state)
# #   result_sens = []
# #   result_reps = []
# #   Congressperson.find_each do |legislator|
# #     if legislator.state == state
# #       result_sens << legislator if legislator.title == 'Sen'
# #       result_reps << legislator if legislator.title == 'Rep'
# #     end
# #   end
# #   puts "Senators:"
# #   result_sens.each do |legislator|
# #     puts "  #{legislator.firstname} #{legislator.lastname} (#{legislator.party})"
# #   end
# #   puts "Representative:"
# #   result_reps.each do |legislator|
# #     puts "  #{legislator.firstname} #{legislator.lastname} (#{legislator.party})"
# #   end
# # end

# def percentage_by_gender(gender)
#   unless gender.downcase == 'm' or gender.downcase == 'male' or 
#   gender.downcase == 'f' or gender.downcase == 'female'
#     puts "Gender not understood."
#     return
#   end
#   men_sen = 0
#   men_rep = 0
#   women_sen = 0
#   women_rep = 0
#   Congressperson.find_each do |legislator|
#     if legislator.in_office == '1'
#       if legislator.title == 'Sen'
#         men_sen += 1 if legislator.gender.downcase == 'm'
#         women_sen += 1 if legislator.gender.downcase == 'f'
#       elsif legislator.title == 'Rep'
#         men_rep += 1 if legislator.gender.downcase == 'm'
#         women_rep += 1 if legislator.gender.downcase == 'f'
#       end
#     end
#   end
#   if gender.downcase == 'male' or gender.downcase == 'm'
#     men_sen_percent = ((men_sen.to_f / (men_sen + women_sen)) * 100).round
#     men_rep_percent = ((men_rep.to_f / (men_rep + women_rep)) * 100).round
#     puts "Male Senators: #{men_sen} (#{men_sen_percent}%)"
#     puts "Male Representatives: #{men_rep} (#{men_rep_percent}%)"
#   else
#     women_sen_percent = ((women_sen.to_f / (men_sen + women_sen)) * 100).round
#     women_rep_percent = ((women_rep.to_f / (men_rep + women_rep)) * 100).round
#     puts "Female Senators: #{women_sen} (#{women_sen_percent}%)"
#     puts "Female Representatives: #{women_rep} (#{women_rep_percent}%)"
#   end
# end



# def sen_rep_counter
#   sens = 0
#   reps = 0
#   Congressperson.find_each do |legislator|
#     sens += 1 if legislator.title == 'Sen'
#     reps += 1 if legislator.title == 'Rep'
#   end
#   puts "Senators: #{sens}"
#   puts "Representatives: #{reps}"
# end

# sen_rep_counter
# # percentage_by_gender('male')
# # legislators_by_state('CA')

