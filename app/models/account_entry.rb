class AccountEntry < ActiveRecord::Base
  belongs_to :account

  validates :account_id, presence: true

  # validated_associated :account
end