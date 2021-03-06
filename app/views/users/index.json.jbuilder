json.array!(@users) do |user|
  json.extract! user, :id, :email, :first_name, :last_name, :is_admin, :password_digest, :session_token, :password_reset_token, :password_reset_sent_at, :is_active, :activation_token, :uid, :access_token, :provider, :oauth_token, :oauth_expires_at, :fb_image_url, :display, :position, :title, :string, :bio, :phone, :work_phone, :home_phone, :mobile_phone, :fax, :timezone, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at
  json.url user_url(user, format: :json)
end
