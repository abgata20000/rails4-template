json.array!(@users) do |user|
  json.extract! user, :id, :email, :nickname, :nickname_kana, :auth, :last_login, :premium_flg, :premium_limit, :profile, :temporary_flg
  json.url user_url(user, format: :json)
end
