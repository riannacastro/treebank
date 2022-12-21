module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [Types::UserType], null: true
    field :accounts, [Types::AccountType], null: true

    def users
      User.all
    end

    def accounts
      Account.all
    end

  end
end
