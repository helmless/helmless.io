## readinessProbe Type

`object` ([Details](index.md))

# readinessProbe Properties

| Property                                    | Type      | Required | Nullable       | Defined by                                                                                                                                                                                        |
| :------------------------------------------ | :-------- | :------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [failureThreshold](#failurethreshold)       | `integer` | Optional | can be null    | [CloudRun Helm Chart](failurethreshold.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/failureThreshold")       |
| [httpGet](#httpget)                         | `object`  | Optional | cannot be null | [CloudRun Helm Chart](httpget.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/httpGet")                         |
| [initialDelaySeconds](#initialdelayseconds) | `integer` | Optional | can be null    | [CloudRun Helm Chart](initialdelayseconds.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/initialDelaySeconds") |
| [periodSeconds](#periodseconds)             | `integer` | Optional | can be null    | [CloudRun Helm Chart](periodseconds.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/periodSeconds")             |

## failureThreshold

Number of consecutive failures before considering the container not ready.

`failureThreshold`

* is optional

* Type: `integer`

* can be null

* defined in: [CloudRun Helm Chart](failurethreshold.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/failureThreshold")

### failureThreshold Type

`integer`

## httpGet

HTTP GET probe configuration.

`httpGet`

* is optional

* Type: `object` ([Details](httpget.md))

* cannot be null

* defined in: [CloudRun Helm Chart](httpget.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/httpGet")

### httpGet Type

`object` ([Details](httpget.md))

## initialDelaySeconds

Number of seconds to wait before starting probe checks.

`initialDelaySeconds`

* is optional

* Type: `integer`

* can be null

* defined in: [CloudRun Helm Chart](initialdelayseconds.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/initialDelaySeconds")

### initialDelaySeconds Type

`integer`

## periodSeconds

How often to perform probe checks.

`periodSeconds`

* is optional

* Type: `integer`

* can be null

* defined in: [CloudRun Helm Chart](periodseconds.md "https://github.com/helmless/google-cloudrun#/properties/readinessProbe/properties/periodSeconds")

### periodSeconds Type

`integer`
