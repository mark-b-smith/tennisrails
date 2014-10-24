class Player < ActiveRecord::Base
has_many :KittyTrans
has_many :Matchs

validates_presence_of :first
validates_presence_of :last
end
