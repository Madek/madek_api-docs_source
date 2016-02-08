{: #media-entries}
# Media-Entries Index `/media-entries/`

{: #get}
## `GET`

Returns a paginated [Media-Entry] collection.

  [Media-Entry]: /resources/media-entry.html

### Query Prameters

{: #collection_id}
#### `collection_id`

| value            | required   |
| ------------     | ---------- |
| UUID as a string | no         |
{: .table.table-striped}

The value, a UUID of a [Collection] (aka. Set), filters those Media-Entries
which are "children" of that [Collection]. See also [Collection in the Madek documentation].


#### `filter_by`

TODO Matus

#### `me_get_full_size`

TODO Matus

#### `me_get_metadata_and_previews`

TODO Matus

#### `order`

TODO Matus

#### `public_get_full_size`

TODO Matus

#### `public_get_metadata_and_previews`

TODO Matus

  [Collection]: /resources/collection.md
  [Collection in the Madek documentation]: https://madek.readthedocs.org/en/latest/entities/#collection

