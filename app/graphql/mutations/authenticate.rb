module Mutations
  class Authenticate < BaseMutation
    argument :credentials, Types::AuthenticationType, required: false

    field :token, String, null: true
    field :user, Types::UserType, null: true

    def resolve(credentials: nil)
      return unless credentials

      user = User.find(email: credentials[:email])

      return unless user
      return unless user.authenticate(credentials[:password_digest])

      # crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      # token = crypt.encrypt_and_sign("user-id:#{ user.id }")

      # { user: user, token: token }
    end
  end
end