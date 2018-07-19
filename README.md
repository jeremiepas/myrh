# myRH

## Git Graph

```
graph TD;
   master-->git_checkout_-b_new-branch;
   git_checkout_-b_new-branch-->develop_feature;
   develop_feature-->git_merge_master;
   git_merge_master-->resolve_conflict_git_merge;
   resolve_conflict_git_merge-->pull_request_master;
   git_merge_master-->pull_request_master;
   pull_request_master-->release_feature;
   release_feature-->merge_feature_master;
   release_feature-->correction_on_branch;
   correction_on_branch-->merge_feature_master;
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
  
