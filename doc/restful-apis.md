---
title: TC Camp API Workshop
subtitle: RESTful APIs
date: April 26, 2019
author: Joanna Bujes and Paul Wallace
---

# RESTful APIs

## Key Points

- REST is a type of API
- REST is an architecture defined by constraints
- REST is imminently suited to distributed networks
- There are countless RESTful APIs in the wild!

## Key Points

Tech writers add value in the following ways:

- Providing tutorials, overviews, the usual stuff
- Documenting service concepts and objects
- Documenting service constraints
- Documenting unexpected behavior
- Copyediting endpoint descriptions
- Naming

## What Is REST?

- **Re**presentational **S**tate **T**ransfer
- REST is an architecture that is defined by constraints
- RESTful designs are scalable, flexible, and consistent
- Predominant method of providing web services
- There's an API for everything!

## REST Constraints

- _Client/server_: Client requests elicit server responses
- _Statelessness_: Servers do not maintain client state
- _Cacheability_: Clients can cache responses
- _Layered system_: Server system is opaque
- _Code on demand_: Responses can contain client-side code
- _Uniform interface_: Named resources, complete messages, HATEOAS!

## HATEOAS

- _Hypertext As The Engine Of Application State_

    The service is discoverable progressively through links contained in responses


## REST Exchanges

- The client sends a request to a server for some resource
- Resources have names -- URIs or _endpoints_
- The client qualifies the request by using a protocol method
- The server responds with resource data

## URIs and URLs

A Uniform Resource Identifier (URI) is a more general term for a Uniform Resource Locator (URL)

`https://api.weather.gov/`

_All URLs are URIs, but not all URIs are URLs_

## URIs and URLs

`https://api.weather.gov/`

The left side of the `:` indicates the protocol to be used, and the right side is the resource name

## Protocols

- A communications protocol makes message exchange possible
- Messages contain metadata _(message header)_ and content _(message body)_
- The protocol defines message formatting rules
- Most RESTful APIs use HTTP _(Hypertext Transfer Protocol)_
- RESTful APIs commonly have JSON as message body content

## Protocol Methods

Protocol methods define actions that can be applied to message data

## Protocol Methods

Common HTTP methods

Method | Action
-------|-------
POST | _Create_
GET | _Read_
PUT/PATCH | _Update_
DELETE | _Delete_

::: notes
there are other methods, and REST is not simply CRUD
:::

## Nouns and Verbs

You can think of endpoints or resources as "nouns", and the methods or actions that you'd like to perform on the resources as "verbs"

## Accessing Resources

Let's pretend we have a widget service

> `https://widgetworld.io`

Their API provides access to a collection of widgets at this endpoint:

> `https://widgetworld.io/widgets`

## Accessing Resources

_"I want to get all of the widgets"_

`GET https://widgetworld.io/widgets`

A `GET` method applied to an endpoint without a trailing identifier returns a collection

## Accessing Resources

_"I want to get Widget 42"_

`GET https://widgetworld.io/widgets/42`

A `GET` method applied to an endpoint with a trailing identifier returns a single resource

## Accessing Resources

_"I want to add a widget"_

`POST https://widgetworld.io/widgets`

A `POST` method applied to an endpoint (along with resource content) adds a resource to the collection

## Accessing Resources

_"I want to update Widget 42"_

`PUT https://widgetworld.io/widgets/42`

A `PUT` method applied to an endpoint with a trailing identifier (along with resource content) updates the resource in the collection

## Accessing Resources

_"I want to remove Widget 42"_

`DELETE https://widgetworld.io/widgets/42`

A `DELETE` method applied to an endpoint with a trailing identifier removes the resource from the collection


## REST Example

![](imgs/lahaina.png)

## REST Example

Let's check the weather with REST using the [National Weather Service  API](https://www.weather.gov/documentation/services-web-api)

- The NWS API is located at `https://api.weather.gov/`
- The endpoint for weather in Lahaina, HI: [https://api.weather.gov/points/20.8861,-156.6747](https://api.weather.gov/points/20.8861,-156.6747)

::: notes
access the Lahaina, HI, geo endpoint
inspect the HTTP headers and JSON content
:::

## Reference Content

An API reference for a REST service documents the service endpoints and their associated methods and message data structures

- [https://api.weather.gov/](https://www.weather.gov/documentation/services-web-api)

::: notes
inspect the spec section of the nws api site
:::

## Managing Expectations

- RESTful services should abide by the architectural constraints
- Behavior that violates those constraints is "unexpected" and should be documented
- Non-architectural constraints pertain to the service, and should also be documented
- Service objects need to be explained

## Service Constraints

- Authentication/Authorization
- Versioning
- Cacheing
- Status codes
- Rate limiting
- Pagination

## Authentication & Authorization

- _Authentication_: Are you who you say you are? (identity)
- _Authorization_: Are you allowed to do it? (role)

## Authentication & Authorization

Typical schemes include the following:

- HTTPS basic auth (username/password)
- API keys
- JSON web tokens
- OAuth

Document the auth schemes used by your service

## Versioning

- Published APIs are set in stone -- if you change them, you will break users' code!
- APIs can be volatile -- change is frequent
- Versioning saves users from future breaking changes
- APIs should be versioned, and this should be explicit

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

## Service Objects

Conceptual content might include service objects. A service might use business domain objects -- e.g., a `Charge` object in a payment service. Document service objects and how to orchestrate them.

## API Doc Content

- Overiew
- Getting started
- Concepts, service object descriptions
- Service constraints
- The unexpected (tactfully described!)
- Endpoint reference
- Interactive examples
- Client libraries

## API Documentation Examples

- [Stripe](https://stripe.com/docs/api)
- [NetData API](https://docs.netdata.cloud/web/api/)
- [Clearbit API](https://clearbit.com/docs)
- [Plaid API](https://plaid.com/docs/)

## Further Learning

I'd Rather Be Writing: Documenting APIs [https://idratherbewriting.com/learnapidoc/](https://idratherbewriting.com/learnapidoc/)

Tom Johnson has created a fantastic and thorough guide on documenting RESTful APIs. Read it and prosper.

## Questions?
