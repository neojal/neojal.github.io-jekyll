# neojal.github.io-jekyll
Jekyll project to generate the static site [neojal.github.io](neojal.github.io). 

### Requirements

[Jekyll Quickstart](https://jekyllrb.com/docs/)

Install Ruby: 
```sh
$ sudo pacman -S ruby
```

Add ruby to the PATH:
```shell
WARNING:  You don't have $HOME/.local/share/gem/ruby/3.0.0/bin in your PATH,
	  gem executables will not run.
	  
$ echo 'export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"' 
```

Install Bundler: 
```sh
$ gem install bundler
```

### Running the site locally

1. Change into your project directory.
    ```shell script
    $ cd neojal.github.io-jekyll
    ```

2. Update the project
    ```shell script
    $ bundle update
    ```
 
3. Build the site and make it available on a local server.
    ```shell script
    $ bundle exec jekyll serve
    ```
4. Browse to http://localhost:4000

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
