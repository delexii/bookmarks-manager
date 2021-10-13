# Bookmark Manager

## Core challenges

- [x] Creating User Stories
- [x] Setting up a Web Project
- [x] Viewing bookmarks
- [x] Setting up a Database
- [ ] Creating your First Table
- [ ] Manipulating Table Data
- [ ] Interacting with Postgres from Ruby
- [ ] Upgrading your Toolset
- [ ] Setting up a Testing Environment
- [ ] Creating bookmarks
- [ ] Wrapping Database data in program objects
- [ ] Securing Your App
- [ ] Deleting bookmarks

## Project Features

- [ ] Show a list of bookmarks
- [ ] Add new bookmarks
- [ ] Delete bookmarks
- [ ] Update bookmarks
- [ ] Comment on bookmarks
- [ ] Tag bookmarks into categories
- [ ] Filter bookmarks by tag
- [ ] Users are restricted to manage only their own bookmarks

## How to install the project

- fork this repo
- clone to your own repo
- push any updates
  `bundle install`
  `rspec`

## How to set up the database

Connect to psql and create the database using the psql command

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

Connect to psql and create the test database using the psql command

```
CREATE DATABASE bookmark_manager_test;
```

## User Stories

```
As a user
So I can remember what bookmarks I have saved
I would like to see my list of bookmarks
```

```
As a user
So I can read a website later
I would like to add a site's url and title to my list of bookmarks
```

