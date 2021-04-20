# neojal.github.io-jekyll
Jekyll project to generate the static site [neojal.github.io](neojal.github.io). 

### Requirements

[Jekyll Quickstart](https://jekyllrb.com/docs/)

### Issues found on first run:
[Dependency not found: webrick](https://github.com/jekyll/jekyll/issues/8523). Install the suggested gems, then add this to _Gemfile_: 
```ruby
gem "webrick"
```

### Running the site locally

1. Change into your project directory.
    ```shell script
    cd neojal.github.io-jekyll
    ```
2. Build the site and make it available on a local server.
    ```shell script
    bundle exec jekyll serve
    ```
3. Browse to http://localhost:4000
