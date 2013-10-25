require_relative '../../db/config'

class Congressperson < ActiveRecord::Base

  validates :title, :inclusion => { :in => %w(Sen Rep)}

end
