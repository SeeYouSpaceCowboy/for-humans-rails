class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :img_url, :zipcode, :age

  has_many :posts
end
