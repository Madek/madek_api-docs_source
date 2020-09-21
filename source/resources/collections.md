{: #collections}
# Collections Index `/collections/`

{: #get}
## `GET`

Returns a paginated [Collection] collection.

  [Collection]: /resources/collection.html

### Query Prameters

{: #collection_id}
#### `collection_id`

| value            | required   |
| ------------     | ---------- |
| UUID as a string | no         |
{: .table.table-striped}

The value, a UUID of a [Collection] (aka. Set), filters those Collections
which are "children" of that [Collection]. See also [Collection in the Madek documentation].

#### `me_get_metadata_and_previews`

| value                   | required   |
| ------------            | ---------- |
| boolean (true/false)    | no         |
{: .table.table-striped}

The value, boolean true/false, filters those Collections for which the authenticated entity is allowed to view the [Meta-Data] and relations of the [Collection].

  [Media-File]: media-file.html
  [Meta-Data]: meta-data.html
  [Previews]: previews.html

#### `order`

| value                                                                  | required   |
| ------------                                                           | ---------- |
| string for sorting by date ("asc"/"desc")                              | no         |
| string for sorting by (Media Entry) title ("title_asc"/"title_desc")   | no         |
| string for sorting by last change ("last_change")                      | no         |
{: .table.table-striped}

The value orders the Collections according to the table above, either **asc**ending or **des**cending.
If ommited, and `collection_id` is set, the order saved in the collection display settings is applied (e.g. it will be the same as in the Web-UI).

#### `public_get_metadata_and_previews`

| value                   | required   |
| ------------            | ---------- |
| boolean (true/false)    | no         |
{: .table.table-striped}

The value, boolean true/false, filters those Collections for which the public is allowed to view the [Meta-Data] and relations of the [Collection].

  [Collection]: collection.html
  [Collection in the Madek documentation]: https://madek.readthedocs.org/en/latest/architecture/entities/#collection
