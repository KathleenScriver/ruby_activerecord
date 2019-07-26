## Steps to setup Ruby app with activerecord

1. In root of project/app, run `bundle init`
1. Add gems: activerecord, pry, sinatra, sintra-activerecord, require_all, run bundle install
3. Create config and lib directories
4. Create config/environment.rb
5. mkdir lib/models
6. Touch Rakefile - require ‘sinatra/activerecord/rake’ and ‘config/environment.rb’
7. In config/environment.rb, require ‘sinatra/activerecord’ and ‘require_all’, then do ‘require_all ‘lib’’, establish ActiveRecord::Base connection to db (call database whatever the name of the db is)
```
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'db/cats.db'
)
```
8. Run rake -T to make sure we have access to raketasks
9. Run `rake db:create_migration NAME=create_cats_table` (will create the db folder if it doesn’t already exist) and will add the migration file to db/migration
10. Write migration file, then run `rake db:migrate`
11. Then can see schema in file structure, can also drop into sqlite3 cats.db to see the tables and schema, but don’t really need to do that anymore. *Review rollback here*
12. Create seeds in db/seeds.rb and run `rake db:seed`
13. Now can put a pry in environment.rb to run Breed.all and see your seeds.

#### Notes
- To view database, can run `sqlite3 db/cats.db`, then can run `.schema` or `.tables` and can run any SQL commands. (Don't need to do this anymore though! ActiveRecord gives us a schema file!)
