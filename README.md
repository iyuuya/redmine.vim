redmine.vim
===========

[Redmine API](http://www.redmine.org/projects/redmine/wiki/Rest_api) Client for Vim

In development ...

Install
-------

### Common

```vim
let g:redmine_url='https://redmine.example.com'
let g:redmine_api_key='YOUR_REDMINME_API_KEY'
```

### NeoBundle

```vim
NeoBundle 'iyuuya/redmine.vim'
```

ToDo
----

### Auth

> * Most of the time, the API requires authentication. To enable the API-style authentication, you have to check Enable REST API in Administration -> Settings -> Authentication. Then, authentication can be done in 2 different ways:
> * using your regular login/password via HTTP Basic authentication.
> * using your API key which is a handy way to avoid putting a password in a script. The API key may be attached to each request in one of the following way:
>   + [x] passed in as a "key" parameter
>   + passed in as a username with a random password via HTTP Basic authentication
>   + [x] passed in as a "X-Redmine-API-Key" HTTP header (added in Redmine 1.1.0)
> You can find your API key on your account page ( /my/account ) when logged in, on the right-hand pane of the default layout.

### API

- [ ] Issues
  - [x] Listing issues
    - [ ] parameters
    - [ ] optional filters
  - [x] Showing an issue
  - [x] Creating an issue
    - [ ] check attribtues
    - [ ] attachments
  - [x] Updating an issue
    - [ ] check attribtues
    - [ ] attachments
  - [x] Deleting an issue
  - [x] Adding a watcher
  - [x] Removing a watcher
- [ ] Projects
  - [x] Listing projects
  - [x] Showing a project
  - [x] Creating a project
    - [ ] check attributes
  - [x] Updating a project
    - [ ] check attribtues
  - [x] Deleting a project
- [ ] Project Memberships
- [ ] Users
  - [x] Listing users
    - [ ] optional filters
  - [ ] Showing a user
  - [ ] Creating a user
  - [ ] Updating a user
  - [x] Deleting a user
- [ ] Time Entries
  - [x] Listing time entries
  - [ ] Showing a time entry
  - [ ] Creating a time entry
  - [ ] Updating a time entry
  - [x] Deleting a time entry
- [ ] News
- [ ] Issue Relations
- [ ] Versions
- [ ] Wiki Pages
  - [x] Getting the pages list of a wiki
  - [x] Getting a wiki page
  - [x] Getting an old version of a wiki page
  - [x] Creating or updating a wiki page
    - [ ] comments
    - [ ] version
  - [x] Deleting a wiki page
- [ ] Queries
- [ ] Attachments
- [ ] Issue Statuses
- [ ] Trackers
- [ ] Enumerations
- [ ] Issue Categories
- [ ] Roles
- [ ] Groups
- [ ] Custom Fields

---

- [ ] document
- [ ] unite.vim
