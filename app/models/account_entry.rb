class AccountEntry < ActiveRecord::Base
  include AASM

  belongs_to :account
  validates :account_id, presence: true
  after_save :update_account_balance!

  scope :rejected, -> { where('aasm_state =?', :rejected)}

  aasm do 
    state :submitted, :initial => true
    state :approved
    state :rejected

    event :approve do 
      transitions :from => :submitted, :to => :approved
    end

    #use AccountEntry.approve! for a persisted state

    event :reject do 
      transitions :from => :submitted, :to => :rejected
    end
  end




  

  # validated_associated :account
  def update_account_balance!
    account.update_balance!
  end
end