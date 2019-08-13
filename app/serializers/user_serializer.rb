class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :email, :bookcases
end
