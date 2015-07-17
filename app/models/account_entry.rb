class AccountEntry < ActiveRecord::Base
  belongs_to :account

  validates :account_id, presence: true
  after_save :update_account_balance!

  # validated_associated :account
  def update_account_balance!
    account.update_balance!
  end
end