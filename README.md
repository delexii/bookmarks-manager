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

![User Story 1](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/1cfc4bb5-b1c3-4552-a23b-e11e5ca6cf57/Screenshot_2021-10-11_at_15.37.22.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAT73L2G45O3KS52Y5%2F20211011%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20211011T143953Z&X-Amz-Expires=86400&X-Amz-Signature=7d01d76c9e15cd8506c69e5df732695ac5d712c95a033e3d5671e094b57fe96c&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Screenshot%25202021-10-11%2520at%252015.37.22.png%22)
