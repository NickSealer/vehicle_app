# README

This app is a SPA (Implementing Turbo Frame) that works as a simple "vehicle searcher", querying all the 5 vehicle models through [pg_search](https://github.com/Casecommons/pg_search) gem.

Install like any other rails app:

``` ruby
1. Bundle install
2. rails db/setup
3. rails db:migrate
4. rails db:seed
```


#### Versions:
- Rails version: 7.1.3\
- Ruby version: 3.3.3\
- Postgresql version: 14.11

\
**If any Hotwire error is raised, try install all the core. But at first it shouldn't.**

``` ruby
1. rails importmap:install
2. rails hotwire:install
3. rails turbo:install
4. rails stimulus:install
```
