class Match < ActiveRecord::Base
has_many :KittyTrans

validates_presence_of :t11
validates_presence_of :t21
validates_presence_of :match_date
end
