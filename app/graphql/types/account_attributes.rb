module Types
  class AccountAttributes < Types::BaseInputObject
    argument :account_number, String, required: false
    argument :total_balance, String, required: true
    argument :available_balance, String, required: true
    argument :account_type, String, required: false
  end
end