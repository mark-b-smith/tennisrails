class MatchCost < ActiveRecord::Base
has_many :Matchs
has_one :Cost
belongs_to :match

validates_presence_of :cost_code
validates_presence_of :mID
end
