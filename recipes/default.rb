node['ssh_keys']['users'].each do |username, user|
  ssh_keys_key username do
    authorized_keys user['authorized_keys']
    authorized_users user['authorized_users']
    action :create
  end
end
