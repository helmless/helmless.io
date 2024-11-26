## image Type

any of the following: `object` or `string` ([Details](index.md))

# image Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                    |
| :------------------------ | :------- | :------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [name](#name)             | `string` | Required | cannot be null | [CloudRun Helm Chart](name.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/name")             |
| [registry](#registry)     | `string` | Optional | can be null    | [CloudRun Helm Chart](registry.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/registry")     |
| [repository](#repository) | `string` | Required | cannot be null | [CloudRun Helm Chart](repository.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/repository") |
| [tag](#tag)               | `string` | Optional | can be null    | [CloudRun Helm Chart](tag.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/tag")               |

## name

Container image name.

`name`

* is required

* Type: `string`

* cannot be null

* defined in: [CloudRun Helm Chart](name.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/name")

### name Type

`string`

## registry

Container image registry.

`registry`

* is optional

* Type: `string`

* can be null

* defined in: [CloudRun Helm Chart](registry.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/registry")

### registry Type

`string`

## repository

Container image repository.

`repository`

* is required

* Type: `string`

* cannot be null

* defined in: [CloudRun Helm Chart](repository.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/repository")

### repository Type

`string`

## tag

Container image tag. For example, 'latest' or '@sha256:abc123'.

`tag`

* is optional

* Type: `string`

* can be null

* defined in: [CloudRun Helm Chart](tag.md "https://github.com/helmless/google-cloudrun#/properties/image/properties/tag")

### tag Type

`string`
