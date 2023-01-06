# README

This is my personal website!

This readme is pretty much just notes to myself to remember how to do things since my work on it is pretty sparse. That being said, it's a good look into how I've designed it for anyone else just looking around.

## Starting server

### Development

`bin/rails server`

### Production

The site is running in an [AWS Lightsail](https://lightsail.aws.amazon.com/ls/webapp/home/instances) instance,
which can be ssh'd into with `ssh -i <location/of/.pem> ubuntu@<Light.sail.IP.address>`.
On this server, there are nginx and puma systemd services running in the background.
Commands to control are: `sudo systemctl {start, stop, restart, status} {nginx, puma}`.
The systemctl logs can be read by: `journalctl -u {puma, nginx}`.

The `check_updates.sh` script in this repository is run every minute on the Lightsail instance, which pulls updates from git and restarts the server if needed.
This means updates to the repository are propagated automatically, and no server side action needs to be taken to refresh the content of the website.
This also means that if breaking changes are pushed to main, they will (almost) immediately be in production, so be careful with pushes to the main branch.

## Projects

To add a project to the website, add a markdown file to the `app/views/markdown/projects/` folder. The file should be titled: `_{Project Name}.md`. It looks best when there's no leading header in the markdown file, because the filename is used as a header in the website.

## Blog

This is the same as the projects, but the markdown should be added to the `app/views/markdown/blogs/` folder. Any images used should be added to the `public/` folder.

The blog is password protected by [lockup](https://github.com/interdiscipline/lockup). The password is set in `config/credentials.yml.enc`, and can be edited with `EDITOR="code --wait" bin/rails credentials:edit` from the rails root directory.

## Resume

My resume is located at `app/assets/documents/Chris Olin Resume.pdf`. If you update the resume, it must either be named the same thing and placed in the same location, or `/app/controllers/pages_controller.rb` must be updated with the new filename.

## About

The about page is also populated from markdown. To edit the content of the about page, edit the `app/views/markdown/_about.html.md` markdown file.

## Domain name and SSL

The domain <olincb.me> is connected to the Lightsail instance's IP.
The domain was purchased on <https://domains.google.com/>.

The SSL cert was obtained from Let's Encrypt and put into the nginx config by following [this blog post](https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/).

The SSL cert gets renewed 30 days before expiration by checking every day if it's going to expire (using `crontab`). Edit with `crontab -e`.

## TODO

- change dark mode icons to switch to the other on mouse hover
  - light mode: shows sun, changes to moon on hover
  - dark mode: shows moon, changes to sun on hover
- art page
- update error html pages

## Useful things:

- Ruby
  - version 2.7.0
- pdf rendering
  - <https://stackoverflow.com/questions/7500451/how-do-i-display-a-pdf-in-ror-ruby>
  - <https://stackoverflow.com/questions/291813/recommended-way-to-embed-pdf-in-html>
  - make sure to add headers for apache or nginx as described in the first link (when we get to that)
  - <https://documentcloud.adobe.com/dc-integration-creation-app-cdn/main.html?api=pdf-embed-api>
- domain
  - <https://domains.google.com/registrar/olincb.me>
- ssl
  - <https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/>
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
