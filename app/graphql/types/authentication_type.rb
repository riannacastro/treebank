module Types 
  class AuthenticationType < BaseInputObject
    argument :email, String, required: true
    argument :password_digest, String, required: true
  end
end