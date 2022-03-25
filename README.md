# README

Currently working through [this](https://guides.rubyonrails.org/getting_started.html). Left off at part 7.

I gave up on the above, and started focusing on the home page. Followed [this tutorial](https://bootrails.com/blog/rails-bootstrap-tutorial).

TODO:

- in the process of getting markdown to render as html, I went through a couple of strategies. I got live rendering of md to work but need to clean up the leftover stuff from when I was trying to pre-render them
- looks like tables aren't working out very well when rendered
- latex is not rendering (do I really need this?)
- write project writeups (don't start them with h1's/#'s)
- get formatting of projects page to look good
- get pages controller to get list of projects dynamically
- delete projects controller
- delete projects folder in views
- delete sql stuff
- clean up unnecessary rails things
- work on art page
- get nginx or apache working
- ssl cert
- get hosted

Useful things:

- start server: `bin/rails server`
- pdf rendering
  - https://stackoverflow.com/questions/7500451/how-do-i-display-a-pdf-in-ror-ruby
  - https://stackoverflow.com/questions/291813/recommended-way-to-embed-pdf-in-html
  - make sure to add headers for apache or nginx as described in the first link (when we get to that)
  - https://documentcloud.adobe.com/dc-integration-creation-app-cdn/main.html?api=pdf-embed-api
- domain
  - https://domains.google.com/registrar/search?hl=en&searchTerm=chrisolin.co&tab=1
- markdown
  - https://github.com/vmg/redcarpet
  - https://bloggie.io/@kinopyo/rails-render-markdown-views-and-partials
  - https://github.com/ytbryan/emd#usage
  - projects markdown files are in `app/views/markdown/projects` and should be named `_{Project Name}.md`. Spaces are allowed and encouraged, as the name of this file will be what shows up in the website
    - still need to implement dynamic updates based on the content of this directory. right now, the names have to be copied to the pages controller.

original readme below. keeping in case I want to actually listen to it.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
