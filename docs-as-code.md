---
title: TC Camp API Workshop
subtitle: "WiFi: https://www.sjpl.org/wireless"
date: April 26, 2019
author: Joanna Bujes and Paul Wallace
---

# Docs as Code

## Docs-as-code

With API doc in particular, it's common for developers to do at least some of the writing. It is much easier to have developers participate when your workflows and tools are similar.

## CI/CD

_Continuous integration/continuous delivery_ is now a common way to manage, test, build, and deliver software... and increasingly doc as well.

## Doc in a CI/CD Workflow

- Source doc maintained in some flat file format
- File versioning managed in source control
- Changes merged into production
- Merges trigger automated builds
- Build runs tests and creates artifacts
- Artifacts are tagged and sent to a release repository

## File Formats

Flat files are preferred, binary types (such as Word) are discouraged as they don't play nice with Git

## File Formats -- markdown

```
## File Formats

Flat files are preferred, binary types (such as Word) are discouraged as they don't play nice with Git
```

## File Formats -- JSON

```
{
  "id": 1,
  "title": "File Formats",
  "body": "Flat files are preferred, binary types (such as Word) are discouraged as they don't play nice with Git"
}
```

## File Formats -- YAML

```
title: File Formats
body: Flat files are preferred, binary types (such as Word) are discouraged as they don't play nice with Git
```

## File Formats -- reStructured Text

```
============
File Formats
============

Flat files are preferred, binary types (such as Word) are discouraged as they don't play nice with Git
```

## Text Editors

- [Atom](https://atom.io/)
- [Notepad++](https://notepad-plus-plus.org/)
- [Sublime Text](https://www.sublimetext.com/)
- [vim](https://www.vim.org/)
- [emacs](https://www.gnu.org/software/emacs/)
- many, many others

## Version Control

Git predominates, though there are others (Subversion, Mercurial, Perforce)

- [git the simple guide](http://rogerdudler.github.io/git-guide/)

## Project Repositories

Code is managed in project repositories, which enable collaboration by distributed teams. Popular project repositories include the following:

- [GitHub](https://github.com/)
- [Gitlab](https://about.gitlab.com/)
- [Bitbucket](https://bitbucket.org/).

## Project Repositories


[https://github.com/apaluya/tc-camp-api-workshop](https://github.com/apaluya/tc-camp-api-workshop)

## Publishing Tools

- [Doxygen](http://www.doxygen.nl/)
- [Hugo](https://gohugo.io/)
- [Javadoc](https://docs.oracle.com/en/java/javase/12/javadoc/javadoc.html)
- [Jekyll](https://jekyllrb.com/)
- [Pandoc](https://pandoc.org/)
- [Sphinx](http://www.sphinx-doc.org/en/master/)
- [Swagger](https://swagger.io/tools/)
- many, many others

## Publishing Tools

When selecting a tool, let your content needs be your guide, not the current fad!

## Automation Server

An automation server manages build jobs. Jenkins, Bamboo, and TeamCity are popular.

## Automation Server

[Travis CI](https://travis-ci.org/apaluya)

## Artifact Repositories

Build artifacts are managed in repositories such as Archiva, Artifactory, Sonatype Nexus. Artifacts are tagged and versioned.

## Artifact Repositories

[https://github.com/apaluya/tc-camp-api-workshop/releases](https://github.com/apaluya/tc-camp-api-workshop/releases)

## Think Like a Developer

- Learn the basics of programming - just enough to be dangerous!
- Learn a dynamically typed language (such as Python or Ruby)
- Learn a statically typed language (such as Golang or Java)
- Write small projects
- Use other people's code in your projects
- Read their API docs!


## Examples of Good API Doc


# Questions?
