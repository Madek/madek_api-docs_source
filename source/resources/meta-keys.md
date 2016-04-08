{: #meta-keys}
# Meta-Keys `/meta-keys/`

## `GET`

Returns a [Meta-Key](meta-key.html) collection. The collection is scoped by public meta-keys by default, where joined `vocabularies.enabled_for_public_view = TRUE`.

### Query Parameters

#### `vocabulary`

| value                                             | required   |
| ------------                                      | ---------- |
| String, id of a vocabulary | no         |
{: .table.table-striped}

The value of this query parameter will be used to restrict the Meta-Keys to
those which belong to the [Vocabulary] of equal id.

  [Vocabulary]: vocabulary.html
