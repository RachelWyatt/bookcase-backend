class BookcaseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :books
end
