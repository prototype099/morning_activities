class Activity < ActiveRecord::Base
  attr_accessible :disable, :main_url, :media, :memo, :organizer_id, :sub_url, :title
end
