# README

## Starting server for development

`bin/rails server`

## Projects

To add a project to the website, add a markdown file to the `app/views/markdown/projects/` folder. The file should be titled: `_{Project Name}.md`. It looks best when there's no leading header in the markdown file, because the filename is used as a header in the website.

## Resume

My resume is located at `app/assets/documents/Chris Olin Resume.pdf`. If you update the resume, it must either be named the same thing and placed in the same location, or `/app/controllers/pages_controller.rb` must be updated with the new filename.

## About

The about page is also populated from markdown. To edit the content of the about page, edit the `app/views/markdown/_about.html.md` markdown file.

## TODO

- in the process of getting markdown to render as html, I went through a couple of strategies. I got live rendering of md to work but need to clean up the leftover stuff from when I was trying to pre-render them
- looks like tables aren't working out very well when rendered
- latex is not rendering (do I really need this?)
- write project writeups (don't start them with h1's/#'s)
- delete projects controller
- delete sql stuff
- clean up unnecessary rails things
- work on art page
- get nginx or apache working
- ssl cert
- get hosted

## Useful things:

- Ruby
  - version 2.7.0
- pdf rendering
  - <https://stackoverflow.com/questions/7500451/how-do-i-display-a-pdf-in-ror-ruby>
  - <https://stackoverflow.com/questions/291813/recommended-way-to-embed-pdf-in-html>
  - make sure to add headers for apache or nginx as described in the first link (when we get to that)
  - <https://documentcloud.adobe.com/dc-integration-creation-app-cdn/main.html?api=pdf-embed-api>
- domain
  - <https://domains.google.com/registrar/search?hl=en&searchTerm=chrisolin.co&tab=1>
- markdown
  - <https://github.com/vmg/redcarpet>
  - <https://bloggie.io/@kinopyo/rails-render-markdown-views-and-partials>
  - <https://github.com/ytbryan/emd#usage>
  - projects markdown files are in `app/views/markdown/projects` and should be named `_{Project Name}.md`. Spaces are allowed and encouraged, as the name of this file will be what shows up in the website
- tutorials I used to get started
  - <https://guides.rubyonrails.org/getting_started.html>
  - <https://bootrails.com/blog/rails-bootstrap-tutorial>
  - <https://pramodkumar-005.medium.com/how-to-deploy-ruby-on-rails-apps-on-aws-lightsail-7b471d609a58>
  - <https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-puma-and-nginx-on-ubuntu-14-04>
  - <https://gist.github.com/0x263b/683c5d09b1cbf4240884491696eb5e46>
  - <https://github.com/puma/puma/blob/master/docs/systemd.md>
  - <https://gist.github.com/arteezy/5d53d99f6ee617fae1f0db0576fdd418>
