{: #person}
# Person `/people/{id}`

A Person in Madek is used to provide properties for a user and as a meta-datum.

The `id` parameter in the URL can be either the `іd` or the `institutional_id` of the person. The `id` is a [UUID] and can be safely used as is in the URL. The `institutional_person_id` is string and requires be [URL encoded] in the general case.

  [UUID]: https://en.wikipedia.org/wiki/Universally_unique_identifier
  [URL encoded]: https://en.wikipedia.org/wiki/Percent-encoding


{: #get}
## `GET`

Returns the properties of a Person.

{: #delete}
## `DELETE`

Returns the properties of a Person.


{: #patch}
## PATCH

Updates a Person.


