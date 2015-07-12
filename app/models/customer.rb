class Customer < Account
  #customer inherits from Account instead AR base, for single table inheritance
  has_many :time_entries
end
