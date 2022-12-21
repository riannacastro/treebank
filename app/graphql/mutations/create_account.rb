module Mutations
  class CreateAccount < BaseMutation
    argument :account_attributes, Types::AccountAttributes, required: true

    def resolve(account_attributes:)

      Account.create!(account_attributes.to_h)

      # if account.valid?
      #   { account: account }
      # end
    end

  end
end