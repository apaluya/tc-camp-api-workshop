# 2019 TC Camp API Workshop

This project contains material related to the [2019 TC Camp API Workshop](https://www.tccamp.org/2019/03/api-workshop-tccamp-2019/), _API Documentation for Beginners_.

- [RESTful APIs](../blob/master/doc/restful-apis.md)
- [Docs as Code](../blob/master/doc/restful-apis.md)

Additionally, this project supports the Docs as Code module by demonstrating several of the pipeline components described therein:

- Source content is maintained in markdown
- Version control is git
- Project repository is [GitHub](https://github.com/apaluya/tc-camp-api-workshop)
- Build tool is [Pandoc](https://pandoc.org/)
- Automation server is [TravisCI](https://travis-ci.org/apaluya/tc-camp-api-workshop)
- Artifact repository is [GitHub Releases](https://github.com/apaluya/tc-camp-api-workshop/releases)

## To build from this project locally:

1. Clone this project.
2. In a shell, `cd` in to the project directory.
3. Execute the following commands:

        $ ./scripts/build.sh restful-apis.md
        $ ./scripts/build.sh docs-as-code.md

HTML artifacts should appear in the top level of the project directory.
