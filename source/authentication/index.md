
# Authentication

The entity  [User] or [ApiClient] can authenticate against the Madek-API.
The API supports two methods for authentication: "Basic Auth" and a "Session
Token".

The [root-resource] will never require authentication. Other resources might
require authentication and some query parameters may only make sense with
authentication.

An instance of the Madek API can be configured such that all resources besides
the [root-resource] require authentication.

{: .text-warning}
We recommend to always access the API with authentication.


## Authentication Methods

### Http Basic

This authentication method is primarily meant to be used for [ApiClient]s.

The "Http Basic" authentication method is commonly used and well documented.
See [Wikipedia: Basic access authentication] or for an informal introduction or
the official [RFC2617].

It is based on providing a username and a password. It is thus not compatible
with third party authentication methods like [SWITCHaai] or [OAuth].

{: .text-warning}
It is currently possible to use an persisted login (as the username) and
password of an [User]. This feature will likely be removed in the
future[^opt-in]. Users should use the more secure "Session Token" to authenticate
against the API.

[^opt-in]: Or it will be only available as an explicit opt-in configuration of your Madek instance.

### Session Token

This authentication method is primarily meant to be used for [User]s.

A "Session Token" provides access to the API for a limited timespan and
potentially other restrictions. "Session Tokens" are submitted as the value of
the [cookie] `madek-session`. A session token can be retrieved via the path
`/my/session-token` after the [User] has signed in. This is preferred over
extracting it from the current cookie. The "normal user interface"  creates
such an cookie and it is therefore possible to transparently use the
API-Browser with authentication once singed in.



  [cookie]: https://en.wikipedia.org/wiki/HTTP_cookie



  [SWITCHaai]: https://www.switch.ch/aai/
  [OAuth]: https://en.wikipedia.org/wiki/OAuth
  [ApiClient]: https://madek.readthedocs.org/en/latest/entities/#apiclient
  [RFC2617]: https://tools.ietf.org/html/rfc2617
  [User]: https://madek.readthedocs.org/en/latest/entities/#user
  [Wikipedia: Basic access authentication]: https://en.wikipedia.org/wiki/Basic_access_authentication
  [root-resource]: /resources/root.html


