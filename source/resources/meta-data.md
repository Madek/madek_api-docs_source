{: #meta-data}
# Meta-Data `/media-entries/{id}/meta-data/`, `/collections/{id}/meta-data/`, `/filter-sets/{id}/meta-data/`

## `GET`

Returns a [Meta-Datum](meta-datum.html) collection where each Meta-Datum
belongs to Media-Resource of the given `id`.

{: .text-warning}
While this collection is not paginated at the moment it might be in the future.

### Query Parameters

#### `meta_keys`

| value                                             | required   |
| ------------                                      | ---------- |
| array of strings, each representing a Meta-Key ID | no         |
{: .table.table-striped}

The returned collection will only include those MetaData which MetaKeys are
provided. If his parameter is not given all MetaData are returned.
