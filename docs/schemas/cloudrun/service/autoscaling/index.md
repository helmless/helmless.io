## autoscaling Type

`object` ([Details](index.md))

# autoscaling Properties

| Property                                        | Type      | Required | Nullable       | Defined by                                                                                                                                                                                      |
| :---------------------------------------------- | :-------- | :------- | :------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [maxConcurrentRequests](#maxconcurrentrequests) | `integer` | Optional | cannot be null | [CloudRun Helm Chart](maxconcurrentrequests.md "https://github.com/helmless/google-cloudrun#/properties/autoscaling/properties/maxConcurrentRequests") |
| [maxScale](#maxscale)                           | `integer` | Optional | cannot be null | [CloudRun Helm Chart](maxscale.md "https://github.com/helmless/google-cloudrun#/properties/autoscaling/properties/maxScale")                           |
| [minScale](#minscale)                           | `integer` | Optional | cannot be null | [CloudRun Helm Chart](minscale.md "https://github.com/helmless/google-cloudrun#/properties/autoscaling/properties/minScale")                           |

## maxConcurrentRequests

The number of concurrent requests per instance. Controls how many requests are processed before the autoscaler scales up. Setting this to 1 means 1 request per instance at a time.

`maxConcurrentRequests`

* is optional

* Type: `integer`

* cannot be null

* defined in: [CloudRun Helm Chart](maxconcurrentrequests.md "https://github.com/helmless/google-cloudrun#/properties/autoscaling/properties/maxConcurrentRequests")

### maxConcurrentRequests Type

`integer`

### maxConcurrentRequests Default Value

The default value is:

```json
80
```

## maxScale

Maximum number of replicas to scale up to.

`maxScale`

* is optional

* Type: `integer`

* cannot be null

* defined in: [CloudRun Helm Chart](maxscale.md "https://github.com/helmless/google-cloudrun#/properties/autoscaling/properties/maxScale")

### maxScale Type

`integer`

### maxScale Default Value

The default value is:

```json
100
```

## minScale

Minimum number of replicas to scale down to. 0 enables scale to zero.

`minScale`

* is optional

* Type: `integer`

* cannot be null

* defined in: [CloudRun Helm Chart](minscale.md "https://github.com/helmless/google-cloudrun#/properties/autoscaling/properties/minScale")

### minScale Type

`integer`
