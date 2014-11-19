set :stage, :production
set :branch, 'master'
server 'o2s.dev.fsv.website', user: fetch(:user), roles: %w{web db app}