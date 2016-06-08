role :app, %w(hosting_olga312@chromium.locum.ru)
role :web, %w(hosting_olga312@chromium.locum.ru)
role :db, %w(hosting_olga312@chromium.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production
