# Fake Orders

This app is a collection of terrible queries. It includes N+1, unindexed keys and lots of bad design.

# Fixing it up

Pagination is awesome, check out the [will_paginate](https://rubygems.org/gems/will_paginate) gem.

Next, you're going to want to optimize some of those queries away without thinking about everything we're writing. Check out the [bullet](https://rubygems.org/gems/bullet), it will tell you lots of things that are wrong on each request.

## Why paginate

Pagination keeps the currently in-context data to a minimum. Users can realistically only process information that makes it into the page fold, after that you lose track of things.

Other reasons include ***performance***; we shouldn't load more than a user will go through in a minute, that's just wasted space.

## What is an N+1

An N+1 is caused by lazy-loading data. Usually you would actually want this behaviour when you're not always going to load a specific piece of information.

An unintended side-effect is that you can end up chaining N+1 queries, this is super bad.
