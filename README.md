## Stream Scheduler React or Next/Rails, deploy on Heroku?

Need devise gem installed

```bash
rails generate devise:install 
```

## If using PostgreSQL, create database

```bash
rails db:create
rails db:migrate
```

Need to use db:create with PostgreSQL to tell postgresql to make the database. Not needed if just using sqlite.

## Seeds File

Created a seeds file to test db
```
stream1 = Stream.find_or_create_by(name: 'Amazing Stuff', description: "What did you expect, it's amazing", schedule: 'Monday, Tuesday' )
stream2 = Stream.find_or_create_by(name: 'More Cool Things', description: "If you're cool, you belong here", schedule: 'Wednesday, Thors Day')
```

```bash

rails db:seed

```

# problems
Oh uh. If you're like me you're seed may not persist because Stream belongs_to User so a user must exist attached to the Stream before it can be persisted.

.

