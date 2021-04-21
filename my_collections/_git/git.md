---
layout: post
title: Git cheatsheet
description: Git Cheatsheet and quick references.
categories: versioning best-practices
---

# Basic tasks
- Clone a repository, clone a repo in a dir:

```bash
$ git clone https://github.com/neojal/neojal.github.io.git
$ git clone https://github.com/neojal/neojal.github.io.git directory

```
- Create branch and switch to it:

```bash
$ git checkout -b edition
```
- Show current branch, show all branches:

```bash
$ git branch 
$ git branch -a
```
- Switch to other branch, to *master*:

```bash
$ git checkout master
```

- Show working tree status:

```bash
$ git status
```

- Add contents to the index of the working tree:

```bash
$ git add file.md
$ git add .
```

- Rewrite *edition* branch with *master*:

```bash
$ git checkout edition
$ git rebase master
```
- Merge *edition* branch into *master*:

```bash
$ git checkout master 
$ git merge edition
```

- Preserve our current changes and make rollback:

```bash
# make new branch to save current code
$ git branch current-changes

# and reset to needed commit
$ git reset --hard commit-id
```

# Quick references:
- gitignore:
  - [https://git-scm.com/docs/gitignore](https://git-scm.com/docs/gitignore)
  - [Merge vs Rebase](https://stackoverflow.com/questions/457927/git-workflow-and-rebase-vs-merge-questions)
