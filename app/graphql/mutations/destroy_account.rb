module Mutations
  class DestroyAccount < BaseMutation
    argument :id, ID, required: true

    type Boolean
    
    def resolve(id:)
      account = Account.find(id)
      account.destroy
    end
  end
end