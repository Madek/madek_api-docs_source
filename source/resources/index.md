# Resources

See the page [Content Types](/content-types/) for the content encoding
of the resources.

Follow the links on top, right for the documentation of a particular resource.

## Query Parameters

Some resources accept additional query parameters. In the absences of
a specification how to encode structured data the Madek API  tries to decode
every value as a [JSON] document and passes on the result. If the decoding
fails the string is passed on as it is. There are a potential pitfalls involved
with this.

{: .text-danger}
For example the string "false" is converted into the boolean value `false` and
recognized as "falsy"[^falsy] when evaluated by the API. However the string "False" is
not a valid `JSON` primitive and passed on as the string "False". The API
could, depending on the context, interpret it as "truthy" which is probably not
indented.

The API tries to perform strict decoding and to fail immediately when receiving
a string instead of a expected boolean type. But this is not always possible.

[^falsy]: The underlying programming language interprets the boolean
    `false` and the special type `null` (resp. `nil`) as "falsy". All
    other values are "truthy".

  [JSON]: http://www.json.org/

