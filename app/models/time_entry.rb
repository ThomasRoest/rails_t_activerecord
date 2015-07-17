class TimeEntry < AccountEntry
  belongs_to :employee

  validates :time, numericality: {greater_than: 0, less_than: 24}
  
  before_create :calculate_amount!

  

  def self.per_hour
    40
  end
  #for use with TimeEntry.per_hour

  def calculate_amount!
    self.amount = TimeEntry.per_hour * self.time
    #using self to set this as an attribute of the TimeEntry model


    # if self.amount > 1000
    #   false
    #   #no 'return false', as this would stop the entire callback from running
    # end
    # true
  end

  
end
