## resources Type

`object` ([Details](index.md))

# resources Properties

| Property                        | Type      | Required | Nullable       | Defined by                                                                                                                                                                  |
| :------------------------------ | :-------- | :------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [cpuThrottling](#cputhrottling) | `boolean` | Optional | cannot be null | [CloudRun Helm Chart](cputhrottling.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/cpuThrottling") |
| [limits](#limits)               | `object`  | Optional | cannot be null | [CloudRun Helm Chart](limits.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/limits")               |
| [startupBoost](#startupboost)   | `boolean` | Optional | cannot be null | [CloudRun Helm Chart](startupboost.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/startupBoost")   |

## cpuThrottling

Whether to throttle the CPU. This has significant impact on billing.

`cpuThrottling`

* is optional

* Type: `boolean`

* cannot be null

* defined in: [CloudRun Helm Chart](cputhrottling.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/cpuThrottling")

### cpuThrottling Type

`boolean`

### cpuThrottling Default Value

The default value is:

```json
true
```

## limits



`limits`

* is optional

* Type: `object` ([Details](limits.md))

* cannot be null

* defined in: [CloudRun Helm Chart](limits.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/limits")

### limits Type

`object` ([Details](limits.md))

## startupBoost

Whether to boost the CPUs at the start of the container.

`startupBoost`

* is optional

* Type: `boolean`

* cannot be null

* defined in: [CloudRun Helm Chart](startupboost.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/startupBoost")

### startupBoost Type

`boolean`
