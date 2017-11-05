class PostSerializer < ActiveModel::Serializer
  attributes :id, :wall_id, :user_id, :description, :created_at
end
