{: #group-users}
# Group-Users `/group/{group-id}/users/{user-id}`

These URLs can be used to infer and modify user membership to a group.  Seed
the [Group] documentation for the meaning of the `group-id`. And the [User]
documentation for the meaning of `user-id`.


## GET `/group/{group-id}/users/{user-id}`

Returns the user properties if the user is a member of the group or HTTP 404
otherwise.

## PUT `/group/{group-id}/users/{user-id}`

Adds the user to the group. Does not change the state and returns a `20x` if
the user is already a member of the group.

## DELETE `/group/{group-id}/users/{user-id}`

Removes the user from the group. Does not delete the user itself!

## GET `/group/{group-id}/users/`

Returns a paginated collection. Each item refers to a [User].

## PUT `/group/{group-id}/users/`

Is used to update the members of a group. The data is a map
`{"users": [user1, user2, ...]`}. Each user is a map which must contain
either `id`, `institutional_id`, or the `email` property.

The group members will be exactly those given with the data after this
operation succeeded. The operation is transactional, all or non membership will
be updated.

  [Group]: /resources/group.html
  [User]: /resources/user.html
  [URL encoding]: https://en.wikipedia.org/wiki/Percent-encoding

