---
title: TC Camp API Workshop
subtitle: "WiFi: https://www.sjpl.org/wireless"
date: April 26, 2019
author: Joanna Bujes and Paul Wallace
---

# RESTful APIs

## Key Points

- REST is a type of API
- REST is an architecture defined by constraints
- REST is not bound by protocols, language, or syntax
- REST is imminently suited to distributed networks
- Countless RESTful APIs in the wild!

## Key Points

Tech writers can add value in the following ways:

- Documenting unexpected behavior
- Documenting service constraints
- Providing tutorials, overviews, etc.
- Copyediting endpoint descriptions

## REST

- **Re**presentational **S**tate **T**ransfer
- Predominant method of deploying web services
- Provides scalability, portability, and uniformity

## REST -- Principles over syntax

- Not bound by protocols, language, or syntax
- A set of principles derived from architectural constraints
- There is much art in crafting a good RESTful API
- If you violate the constraints, you might hear from Roy Fielding

## REST Constraints

- _Client/server_: Client requests elicit server responses
- _Statelessness_: Servers do not maintain client state
- _Cacheability_: Clients can cache responses
- _Layered system_: Server system is opaque
- _Code on demand_: Responses can contain client-side code
- _Uniform interface_: Named resources, complete messages, HATEOAS!

## REST -- HATEOAS

_Hypertext As The Engine Of Application State_

The service is discoverable progressively through links contained in responses

# REST Exchanges

## REST Exchanges

- Clients send requests to a server for some resource
- Server responds with resource data
- Resources have names -- URIs
- URIs are often referred to as _endpoints_

## URIs and URLs

A Uniform Resource Identifier (URI) is a more general term for a Uniform Resource Location (URL)

`http://www.example.com/posts`

## Protocol and data formats

- Requests and responses use some protocol (e.g., HTTP)
- The protocol can carry message metadata and content
- Common content formats include JSON and XML
- The protocol provides methods for accessing data

## Response objects

Content data is often objects or collections of objects

Fetching a single object:

`GET http://example.com/posts/1`

`{"id": 1, "title": "1st post", "body": "A 1st post"}`

## Response objects

Fetching a collection of objects:

`GET http://example.com/posts`

`  [ {"id": 1, "1st post", "body": "A 1st post"},`

`  {"id": 2, "title": "2nd post", "body": "A 2nd post"}]`

## Adding to resource collections

Authorized clients can alter resource data on the server

`POST http://example.com/posts`

`{"title": "Another post", "body": "This post is short."}`

## Methods

Common HTTP methods

Method | Action
-------|-------
POST | _Create_
GET | _Read_
PUT/PATCH | _Update_
DELETE | _Delete_


# System Design vs. Service

## Architecture vs. Service

- RESTful services should behave within architectural constraints
- "Unexpected" behavior should be documented
- Service constraints are outside of architecture, and should also be documented

## Service Constraints

- Versioning
- Authentication/Authorization
- Cacheing
- Status codes
- Rate limiting
- Pagination
- Client libraries

## Versioning

- Published APIs are set in stone -- if you change them, you will break users' code!
- APIs can be volatile -- change is frequent
- Versioning can save users from breaking changes
- APIs should be versioned, and this should be explicit to the user

## Authentication & Authorization

- _Authentication_: Are you who you say you are? (identity)
- _Authorization_: Are you allowed to do it? (role)

## Authentication & Authorization

Typical schemes include the following:

- HTTPS basic auth
- API keys
- JSON web tokens
- OAuth

Document the auth schemes used by your service

## Cacheing

How long is response data valid?

Document cacheing recommendations as appropriate

## Status Codes

Status codes are returned by the server in the response header

## Status Codes -- HTTP

Code class | Condition
------|----------
`20x` | Success
`30x` | Redirect
`40x` | Client errors
`50x` | Server errors

## Status Codes -- OK

The request was successful

```
HTTP/2.0 200 OK
date: Wed, 24 Apr 2019 02:08:26 GMT
content-type: text/json; charset=UTF-8
expires: Tue, 23 Apr 2019 02:08:26 GMT
response: 200
. . .
```

## Status Codes -- Not Found

The requested endpoint could not be located by the server

```
HTTP/2.0 404 Not Found
date: Wed, 24 Apr 2019 02:08:45 GMT
content-type: text/json; charset=UTF-8
expires: Tue, 23 Apr 2019 02:08:45 GMT
response: 404
. . .
```

## Status Codes

Document any custom status codes, unusual use of status codes, or commonly occurring error conditions

## Rate Limiting

Does the service ever limit the number of allowed requests?

Requests cost server time, so services sometimes implement rate limiting and possibly charge extra to increase allowances

## Pagination

Can response bodies contain a very large array of objects? With pagination, users can step through subsets of response data

Document pagination recommendations if necessary

## Client Libraries

An API for working with your API ;-)

Client libraries provide language-specific code for processing service data and simplifying usage

Document the library API, elucidate the workflows, and be sure to provide plenty of sample code!


# Questions?

## Resources

- I'd Rather Be Writing: Documenting APIs [https://idratherbewriting.com/learnapidoc/](https://idratherbewriting.com/learnapidoc/)

# Thank You
