class Page < ActiveRecord::Base
  has_serialized :dynamic_attributes, gunslinger: true, lowmen: true, jake: true
end
