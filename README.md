# myRH

## Git Graph

```
graph TD;
master-->git_checkout_-b_new-ranch;
git_checkout_-b_new-ranch-->devellope_feature;
devellope_feature-->git_merge_master;
git_merge_master-->resolve_conflie_git_merge;
resolve_conflie_git_merge-->pull_request_master;
git_merge_master-->pull_request_master;
pull_request_master-->realise_feature;
realise_feature-->merge_feature_master;
realise_feature-->correctif_on_branch;
correctif_on_branch-->merge_feature_master;
```

## Commands
 - create database
       ```docker-compose run web rake db:create
	   ``` 
 - migrate database
       ```docker-compose run web rake db:migrate
	   ```
 - seed database
	         ```docker-compose run web rake db:seed
			 ```
 - delete database
	   ```docker-compose rm db```
	   ```rm -rf data/
	   ```


## Gem Add on Rails
 - rails_admin
 - bcrypt-ruby
  
