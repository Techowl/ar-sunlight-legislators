require_relative '../../db/config'

class Representative < Congressperson
  validates :title, :format => { :with => /Rep/}
end
