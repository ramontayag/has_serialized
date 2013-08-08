class Page < ActiveRecord::Base
  has_serialized :dynamic_attributes, gunslinger: true, lowmen: true, jake: true, ka_tet: 'none'
end
