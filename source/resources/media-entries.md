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

| value                   | required   |
| ------------            | ---------- |
| JSON encoded as string  | no         |
{: .table.table-striped}

The value, JSON encoded string, filters those Media-Entries which satisfy the given filter conditions. Only that meta_data is searched, where the respective meta_keys belong to public vocabularies, where `enabled_for_public_view = TRUE`.

The specification of the filter value is documented under [Filters in the Madek documentation].


  [Filters in the Madek documentation]: https://madek.readthedocs.org/en/latest/filters/

#### `me_get_full_size`

| value                   | required   |
| ------------            | ---------- |
| boolean (true/false)    | no         |
{: .table.table-striped}

The value, boolean true/false, filters those Media-Entries for which the authenticated entity is allowed to download the [Media-File].

#### `me_get_metadata_and_previews`

| value                   | required   |
| ------------            | ---------- |
| boolean (true/false)    | no         |
{: .table.table-striped}

The value, boolean true/false, filters those Media-Entries for which the authenticated entity is allowed to view the [Meta-Data] and [Previews] of the [Media-File].

  [Media-File]: media-file.html
  [Meta-Data]: meta-data.html
  [Previews]: previews.html

#### `order`

| value                   | required   |
| ------------            | ---------- |
| string ("asc"/"desc")   | no         |
{: .table.table-striped}

The value, string "asc" or "desc", orders the Media-Entries according to their creation date either in the ascending or descending manner. The default is the descending one.

#### `public_get_full_size`

| value                   | required   |
| ------------            | ---------- |
| boolean (true/false)    | no         |
{: .table.table-striped}

The value, boolean true/false, filters those Media-Entries for which the public is allowed to download the [Media-File].

#### `public_get_metadata_and_previews`

| value                   | required   |
| ------------            | ---------- |
| boolean (true/false)    | no         |
{: .table.table-striped}

The value, boolean true/false, filters those Media-Entries for which the public is allowed to view the [Meta-Data] and [Previews] of the [Media-File].

  [Collection]: collection.html
  [Collection in the Madek documentation]: https://madek.readthedocs.org/en/latest/entities/#collection
