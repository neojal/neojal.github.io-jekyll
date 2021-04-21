# neojal.github.io-jekyll
Jekyll project to generate the static site [neojal.github.io](neojal.github.io). 

### Requirements

[Jekyll Quickstart](https://jekyllrb.com/docs/)

### Issues found on first run:
[Dependency not found: webrick](https://github.com/jekyll/jekyll/issues/8523). 
Install the suggested gems, then add this to _Gemfile_: 
```ruby
gem "webrick"
```

### Running the site locally

1. Change into your project directory.
    ```shell script
    $ cd neojal.github.io-jekyll
    ```
2. Build the site and make it available on a local server.
    ```shell script
    $ bundle exec jekyll serve
    ```
3. Browse to http://localhost:4000

### Enabling live-reload

```shell script
$ bundle exec jekyll serve -l -o
```

# Managing Contents

* Setting up [Collections](https://jekyllrb.com/docs/collections/).

### Theme Overriding 
[Jekyll Themes](https://jekyllrb.com/docs/themes/) 


Jekyll themes are composed by this four directories which, if copied to the root of your new blog, can override the
installed theme and you can customize it: 

```shell script
/assets
/_layouts
/_includes
/_sass
```