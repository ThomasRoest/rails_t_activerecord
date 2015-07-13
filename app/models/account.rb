class Account < ActiveRecord::Base
  has_many :account_entries

  validates :name, presence: {message: "Enter a name please"}, 
                   length: {in: 1..70, message: "please use a decent name"}, 
                   uniqueness: true
  
  validate :your_name_is_not_dumb
  #'validate' singular for custom validation functions

  #custom validation
  def your_name_is_not_dumb
    if name.include?("dumb")
      errors.add(:name, "is dumb")
    end
  end
end
