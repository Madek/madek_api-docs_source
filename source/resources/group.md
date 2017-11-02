{: #group}
# Group `/groups/{id}`

Each group in Madek is related to users. A group in Madek is primarily used to
permit users to access resources.

The `group-id` parameter in the URL can be either the `іd` or the
`institutional_id` of the group. The `id` is a [UUID] and can be safely used as
is in the URL. The `institutional_id` is string and requires be [URL encoded]
in the general case.

  [UUID]: https://en.wikipedia.org/wiki/Universally_unique_identifier
  [URL encoded]: https://en.wikipedia.org/wiki/Percent-encoding

{: #get}
## `GET`

Returns the properties of a Group.

{: #delete}
## `DELETE`

Returns the properties of a Group.


{: #patch}
## PATCH

Updates a Group.



