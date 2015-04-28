json.array!(@users) do |user|
  json.extract! user, :id, :username, :name, :email, :password_digest, :avatar_url
  json.url user_url(user, format: :json)
end
