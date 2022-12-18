# frozen_string_literal: true

module Types
  class AccountType < Types::BaseObject
    field :id, ID, null: false
    field :account_number, String, null: false
    field :total_balance, String, null: true
    field :available_balance, String, null: true
    field :account_type, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def account_number
      object.account_number
    end
  end
end
