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

https://www.pivotaltracker.com/n/projects/1357584 (story ≒ task)

- [ ] document
- [ ] unite.vim
