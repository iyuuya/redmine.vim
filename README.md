redmine.vim
===========

[Redmine API](http://www.redmine.org/projects/redmine/wiki/Rest_api) Client for Vim

In development ...

Auth
----

> * Most of the time, the API requires authentication. To enable the API-style authentication, you have to check Enable REST API in Administration -> Settings -> Authentication. Then, authentication can be done in 2 different ways:
> * You can find your API key on your account page ( /my/account ) when logged in, on the right-hand pane of the default layout.

Install
-------

### Common

```vim
let g:redmine_url='https://redmine.example.com'
let g:redmine_api_key='YOUR_REDMINME_API_KEY'
```

#### with basic authentication

```vim
let g:redmine_basic_auth_username='username'
let g:redmine_basic_auth_password='password'
```

### NeoBundle

```vim
NeoBundle 'iyuuya/redmine.vim'
```

ToDo
----

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
  - [x] Showing a user
  - [x] Creating a user
    - [ ] check attribtues
  - [x] Updating a user
    - [ ] check attribtues
  - [x] Deleting a user
- [ ] Time Entries
  - [x] Listing time entries
  - [x] Showing a time entry
  - [x] Creating a time entry
    - [ ] check attribtues
  - [x] Updating a time entry
    - [ ] check attribtues
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
