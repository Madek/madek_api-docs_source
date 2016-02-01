# Content Types

The Madek-API provides access to structured data in either `JSON` or `JSON-ROA`
format. Stored media contend, such as images, or videos, will be delivered in
the given format.

## The JSON and JSON-ROA Format

Structured data is delivered in `JSON` format corresponding to the content-type
`application/json`. `JSON-ROA` is an extension of the `JSON` format which aids
in navigating through the API. The corresponding content type is
`application/json-roa+json`.

Read more about the JSON-ROA extension at [json-roa.github.io](http://json-roa.github.io/)
and also in the [official specification](http://json-roa.github.io/specification.html).

### Content Type Negotiation

The Madek-API performs content type negotiation whether plain `JSON` or
`JSON-ROA` will be delivered. A request with the header `Accept:
application/json` will deliver `JSON` only. A request with the header `Accept:
application/json-roa+json` will deliver additional data.

{: .text-warning}
We recommend to always request and use `JSON-ROA` data. This is in particular
important when iterating over [paginated](https://en.wikipedia.org/wiki/Pagination#Pagination_in_web_content) items. The query parameters for
pagination are considered as an internal implementation detail of the API and
should not be used directly. The `JSON-ROA` next link abstracts away
implementation and should always be used instead.
