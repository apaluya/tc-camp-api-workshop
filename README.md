# 2019 TC Camp API Workshop

This project supports the [2019 TC Camp API Workshop](https://www.tccamp.org/2019/03/api-workshop-tccamp-2019/), _API Documentation for Beginners_ held on April 26, 2019, in San Jose, CA.

This project contains my presentation material for the following sessions:

- [RESTful APIs](doc/restful-apis.md)
- [Docs as Code](doc/docs-as-code.md)

The material is delivered as HTML slide decks. You can download the deliverables from the [releases page](https://github.com/apaluya/tc-camp-api-workshop/releases).

[Joanna's PPTX slide deck](pptx/TC-Camp-API-Workshop.pptx) is available here as well.

I'll be updating this project over time, adding more content and other improvements. If there's something you'd like to see, you can [file an issue](https://github.com/apaluya/tc-camp-api-workshop/issues).

## Docs as Code Demo

This project also supports the _Docs as Code_ session by demonstrating several of the pipeline components described therein:

- Source content is maintained in markdown
- Version control is git
- Project repository is [GitHub](https://github.com/apaluya/tc-camp-api-workshop)
- Build tool is [Pandoc](https://pandoc.org/)
- Automation server is [TravisCI](https://travis-ci.org/apaluya/tc-camp-api-workshop)
- Artifact repository is [GitHub Releases](https://github.com/apaluya/tc-camp-api-workshop/releases)

The build artifacts of this project are HTML slide presentations using [RevealJS](https://github.com/hakimel/reveal.js/).

## To build from this project locally:

_Prerequisites: *nix system with base installation of Pandoc._

1. Clone this project.
2. In a shell, `cd` into the project directory.
3. Execute the following commands:

        $ ./scripts/build.sh doc/restful-apis.md
        $ ./scripts/build.sh doc/docs-as-code.md

HTML artifacts should appear in the top level of the project directory.
