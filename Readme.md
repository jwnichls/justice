Installation and Running
===

For each topic/environment you want to run, create a twitter account and a new heroku account

Install heroku toolbelt and heroku:accounts (http://martyhaught.com/articles/2010/12/14/managing-multiple-heroku-accounts/)

run $ heroku accounts:add <some_arbitrary_name_that_describes_the_environment> --auto

authenticate to your heroku account

add a section to the project's .git/config file along the lines of (nojustice is the heroku:account name i'm using in this example):

[remote "heroku"]
	url = git@heroku.nojustice:inojustice.git

use $ heroku accounts:set <account_name>



to set the right account name when you're using it. you might want to add this line to your .rvmrc file for the project so it'll autoset the account when you're in the working directory


Presumably you also want a private github/bitbucket/gitorious account for the project, so create and add that too

Push the codebase to the heroku instance and login with your new environment-based twitter account. the first user is assumed to be the admin and has special priveleges in the environment.


Before you can visit the site, you need to load the database. For some reason $ heroku run rake db:migrate has a problem so you might be better off loading with $ heroku run rake db:schema:load