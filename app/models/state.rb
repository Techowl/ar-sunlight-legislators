require_relative '../../db/config'

class State < ActiveRecord::Base
  has_many :congresspeople
  validates :name, :format => { :with => /\A\w{2}\z/ }
end
