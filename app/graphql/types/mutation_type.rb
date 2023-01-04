module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"

    #Authenticate
    field :authenticate, mutation: Mutations::Authenticate

    # Accounts
    field :create_account, mutation: Mutations::CreateAccount
    field :destroy_account, mutation: Mutations::DestroyAccount

    def test_field
      "Hello World"
    end
  end
end
