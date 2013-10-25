require_relative '../../db/config'

class Congressperson < ActiveRecord::Base

  validates :title, :inclusion => { :in => %w(Sen Rep)}
  # validates :state, :format => { :with => /\A\w{2}\z/ }

  # attribute_names = [:title, :firstname, :middlename, :lastname, :name_suffix, :nickname, :party, :state,
  #                    :district, :in_office, :gender, :phone, :fax, :website, :webform, :congress_office,
  #                    :bioguide_id, :votesmart_id, :fec_id, :govtrack_id, :crp_id, :twitter_id, 
  #                    :congresspedia_url, :youtube_url, :facebook_id, :official_rss, :senate_class, :birthdate]


end
