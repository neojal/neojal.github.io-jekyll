:: ---Jekyll-build---

:: Generates static contents from an existent Jekyll project to _site directory.

set JEKYLL_VERSION="4.1.0"
set PWD="C:\Users\Jose_Aguilera\IdeaProjects\neojal.github.io-jekyll\neojal-site"

docker run --rm ^
  --volume="%PWD%:/srv/jekyll" ^
  -it jekyll/builder:%JEKYLL_VERSION% ^
  jekyll build
