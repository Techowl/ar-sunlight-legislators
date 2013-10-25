require_relative '../../db/config'

class State
  validates :state, :format => { :with => /\A\w{2}\z/ }
