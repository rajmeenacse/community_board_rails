class CommunitySerializer < ActiveModel::Serializer
  attributes :id, :name, :post_count

   def post_count
    object.posts.count
  end

end
