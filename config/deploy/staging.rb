set :stage,     :staging
set :deploy_to, '/var/www/rails-gulp_webapps_cz'
set :rails_env, 'staging'

server 'REPLACE_ME',
        user: 'rails-gulp_webapps_cz',
        roles: %w(web app db)

