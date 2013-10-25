require_relative '../../db/config'

class Senator < Congressperson
  validates :title, :format => { :with => /Sen/}
end
