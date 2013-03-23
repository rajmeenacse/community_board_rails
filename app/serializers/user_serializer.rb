class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar_url

  def avatar_url
   "my avatar url"
  end
end
