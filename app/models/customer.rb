class Customer < Account
  has_paper_trail
  #customer inherits from Account instead AR base, for single table inheritance
  has_many :time_entries

  #custom scopes
  scope :large_customer, -> { where("employees > ?", 500)}
  scope :newest, -> { order("created_at DESC")}

  #scope with argument
  scope :starts_with, -> (letter) { where("name LIKE ?", letter + "%")}
  
end
