#!/bin/bash

git clone https://github.com/railstutorial/sample_app_rails_4.git
cd sample_app_rails_4

heroku apps:create hk-rails-demo
git push heroku master
heroku run rake db:migrate

sleep 600

# heroku apps:destroy -a hk-rails-demo --confirm hk-rails-demo
