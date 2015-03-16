set :stage,     :production
set :rails_env, 'production'
set :deploy_to, '/var/www/rails-gulp_com'

server 'REPLACE_ME',
       user: 'rails-gulp',
       roles: %w(web app db)
