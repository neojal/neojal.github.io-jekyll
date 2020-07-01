:: ---Jekyll new site---

set JEKYLL_VERSION="4.1.0"
set PWD="C:\Users\Jose_Aguilera\IdeaProjects\neojal.github.io-jekyll"
set MY_AWESOME_SITE="neojal-site"

docker run --rm ^
  --volume="%PWD%:/srv/jekyll" ^
  -it jekyll/builder:%JEKYLL_VERSION% ^
  jekyll new %MY_AWESOME_SITE%
