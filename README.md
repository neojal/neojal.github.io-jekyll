# neojal.github.io-jekyll
Docker/Jekyll project to generate the static site [neojal.github.io](neojal.github.io). 

## Requirements

* Install Docker
* Install Git
* Set work directory (PWD var) in cmd Scripts.

### Official Jekyll Docker Image

* https://hub.docker.com/r/jekyll/jekyll/ 
* https://github.com/envygeeks/jekyll-docker/blob/master/README.md 

### Jekyll reference

* https://jekyllrb.com/ 

### Scripts
Someday will add Linux shell scripts.

**docker-jekyll-new.cmd**  
Runs a container and creates a brand-new Jekyll project.

~~~cmd
:: ---Jekyll new site---

set JEKYLL_VERSION="4.1.0"
set PWD="C:\Users\Jose_Aguilera\IdeaProjects\neojal.github.io-jekyll"
set MY_AWESOME_SITE="neojal-site"

docker run --name jekyll-neojal ^
  --volume="%PWD%:/srv/jekyll" ^
  -it jekyll/builder:%JEKYLL_VERSION% ^
  jekyll new %MY_AWESOME_SITE%
~~~

## Working with the Docker Jekyll container

1. Start the previously created container and list the files of the new Jekyll project:
~~~bash
> docker start jekyll-neojal
> docker exec -ti container_name /bin/bash
# ls 
404.html        Gemfile         Gemfile.lock    _config.yml
_posts          _site           about.markdown  index.markdown
  ~~~

2. Build the site, the output will be written into *_site* directory. 
~~~bash
# jekyll build
~~~

3. Serve the site.
~~~bash
# jekyll serve --livereload
~~~

4. Live reloading only works when you edit the file directly in the container. So I installed *vim* in the container to test it:  
~~~bash
# apk --no-cache add vim
# vim about.markdown
~~~
