---
title: TC Camp API Workshop
subtitle: Docs as Code
date: April 26, 2019
author: Joanna Bujes and Paul Wallace
---

# Docs as Code

::: notes
Copyright (C) 2019  Paul Wallace

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
:::

## Docs as Code

With API doc in particular, it's common for developers to do at least some of the writing. It is much easier to have developers participate when your workflows and tools are similar.

## CI/CD

_Continuous integration/continuous delivery_ is now a common way to manage, test, build, and deliver software... and increasingly docs as well.

_Docs as code_ means that docs production has been integrated into a CI/CD process.

## CI/CD

![Basic CI/CD pipeline](imgs/basic-pipeline.png)

## Docs in a CI/CD Workflow

- Source doc maintained in some flat file format
- File versioning managed in a distributed version control system
- Changes are merged into production
- Merges trigger automated builds
- Builds run tests and create artifacts
- Artifacts are tagged and sent to a repository

## Docs in a CI/CD Workflow

Process advantages:

- Explicit, consistent steps
- Visible to all stakeholders
- Fully automated
- Supports validation
- Significantly faster
- Significantly reduced fear!

## Docs in a CI/CD Workflow

No more

_"But it's in the email I sent..."_

or

_"It's on his computer, I think..."_


## File Formats

- Flat files are preferred, binary types (such as Word) are discouraged as they don't play nice with Git
- Flat files support versioning via changesets, whereas binary files must be overwritten entirely

## File Formats

You should be comfortable working with the following file formats:

- markdown
- JSON
- YAML


## File Formats - Markdown

```markdown
## File Formats

- Flat files are preferred, binary types (such as Word)
  are discouraged as they don't play nice with Git
- Flat files support versioning via changesets, whereas
  binary files must be overwritten entirely
```

## File Formats - JSON

```json
{
  "id": 1,
  "title": "File Formats",
  "body": [
          "Flat files are preferred, binary types
            (such as Word) are discouraged as they
            don't play nice with Git",
          "Flat files support versioning via changesets,
            whereas binary files must be overwritten
            entirely"
    ]
}
```

## File Formats - YAML

```yaml
title: File Formats
body:
  - "Flat files are preferred, binary types
     (such as Word) are discouraged as they
     don't play nice with Git"
  - "Flat files support versioning via changesets,
     whereas binary files must be overwritten
     entirely"
```

## File Formats - reStructuredText

```rest
~~~~~~~~~~~~~
File Formats
~~~~~~~~~~~~~

* Flat files are preferred, binary types (such as |MS|)
  are discouraged as they don't play nice with Git
* Flat files support versioning via changesets, whereas
  binary files must be overwritten entirely

.. |MS| replace:: Word
```

## Text Editors

- [Atom](https://atom.io/)
- [Notepad++](https://notepad-plus-plus.org/)
- [Sublime Text](https://www.sublimetext.com/)
- [vim](https://www.vim.org/) or [emacs](https://www.gnu.org/software/emacs/) for CLI
- many, many others -- use what works for you!

## Version Control

[Git](https://git-scm.com/) predominates, though there are other systems, such as [Mercurial](https://www.mercurial-scm.org/)

- Git is not exactly intuitive
- [git the simple guide](http://rogerdudler.github.io/git-guide/)

## Project Repositories

Code is managed in project repositories, which enable collaboration by distributed teams. Popular project repositories include the following:

- [GitHub](https://github.com/)
- [Gitlab](https://about.gitlab.com/)
- [Bitbucket](https://bitbucket.org/)
- Amazon AWS, Microsoft Azure, etc.

## Project Repositories

The doc for this presentation is hosted in GitHub at [https://github.com/apaluya/tc-camp-api-workshop](https://github.com/apaluya/tc-camp-api-workshop)

::: notes
look at GitHub repository
:::


## Publishing Tools

You'll need a build tool that can support the following:

- Build necessary deliverable types (HTML, PDF, etc.)
- Run in an automated environment via scripts
- Has sufficient support (good doc, bug fixes, large community, etc.)
- Fulfills any additional constraints specific to your content set

You'll likely have to manage this tool. Be clear about your requirements when picking a tool, and make sure you're comfortable with the maintenance overhead.

## Publishing Tools

In the immortal words of Eliot Kimber...

> [All tools suck](http://drmacros-xml-rants.blogspot.com/2006/02/all-tools-suck.html)

No one is 100% happy with their tools, particularly in docs.

_(Seems like this should be acknowledged in any tools discussion)_

## Publishing Tools

In the API docs space, _static site generators_ are very popular

- [Jekyll](https://jekyllrb.com/)
- [Hugo](https://gohugo.io/)
- [Pandoc](https://pandoc.org/)
- [Sphinx](http://www.sphinx-doc.org/en/master/)
- many others

## Publishing Tools

Some domain-specific tools include the following:

- REST APIs: [Swagger](https://swagger.io/tools/), [Postman](https://www.getpostman.com/)
- Java: [Javadoc](https://docs.oracle.com/en/java/javase/12/javadoc/javadoc.html)
- C-like langs: [Doxygen](http://www.doxygen.nl/)
- many, many others

## Publishing Tools

Let's build something!

::: notes
live code demo of building this presentation from the CLI
:::

## Automation Server

An automation server manages build jobs. [Jenkins](https://jenkins.io/), [Bamboo](https://www.atlassian.com/software/bamboo), and [TeamCity](https://www.jetbrains.com/teamcity/) are popular within enterprises.

[TravisCI](https://travis-ci.org/) and [CircleCI](https://circleci.com/) are popular among free open source software (FOSS) projects.

## Automation Server

Build job execution occurs as follows:

1. User pushes a change to project repository.
2. Project pings the automation server.
3. Server creates a build job.
4. Server clones the project into the job.
5. Server provides a build environment from project config data.
6. Server runs the project's build scripts.
7. Server runs post-build commands (deliver artifacts, clean up, etc.)


## Automation Server

Let's look at an automation server!

[https://travis-ci.org/apaluya](https://travis-ci.org/apaluya)

::: notes
open travis ci instance
:::

## Artifact Repositories

Build artifacts are managed in archive repositories. Artifacts are tagged and versioned and available for distribution.

- [Artifactory](https://jfrog.com/artifactory/)
- [Sonatype Nexus](https://www.sonatype.com/nexus-repository-sonatype)
- [Archiva](https://archiva.apache.org/index.cgi)
- many others

## Artifact Repositories

Let's look at an artifact repository!

[https://github.com/apaluya/tc-camp-api-workshop/releases](https://github.com/apaluya/tc-camp-api-workshop/releases)

## Continuous Integration

An integration process might look like the following:

 > dev > qa > staging > production

## Continuous Integration

> dev > qa > staging > production

You create artifacts in the _dev_ step, and those get picked up from the artifact repository and passed along for further testing and evaluation. Integration is usually orchestrated by your DevOps team.



## Further Learning

[Open Data Kit](https://opendatakit.org/) is an open source project with a warm and welcoming group of documentarians. They produce a comprehensive guide detailing every step of their process. Participating in that project is a quick and easy way to gain experience with Docs as Code -- and you can put that on your resume!

[ODK Docs Contributing Guide](https://docs.opendatakit.org/contributing/)

# Workshop Conclusion

## Keys to Good API Writing

The keys to good API writing are the same as for all technical writing:

- Know your audience -- in this case, devs
- Help them achieve their goals
- Provide supporting resources
- Write in a minimalist style

## Know Your Audience

To understand what devs want, you should learn to think like a dev

- Learn the basics of programming - just enough to be dangerous! _(Try [Python](http://www.tldp.org/LDP/abs/html/index.html) or [Golang](https://golang.org/))_
- Write small projects and use other people's code
- Read their API docs!

From this you'll gain insights into dev needs, and that'll help you write better doc.

# Questions?
