# 2019 TC Camp API Workshop

This project contains material related to the [2019 TC Camp API Workshop](https://www.tccamp.org/2019/03/api-workshop-tccamp-2019/), _API Documentation for Beginners_.

The course material includes the following:

- [API Basics (PPTX)](pptx/TC-Camp-API-Workshop-1.pptx)
- [Documenting APIs: The Reality (PPTX)](pptx/TC-Camp-API-Workshop-2.pptx)
- [RESTful APIs (HTML)](doc/restful-apis.md)
- [Docs as Code (HTML)](doc/restful-apis.md)

You can download the course material from the [releases page](https://github.com/apaluya/tc-camp-api-workshop/releases)

## Docs as Code Demo

This project also supports the Docs as Code module by demonstrating several of the pipeline components described therein:

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
