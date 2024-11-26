## limits Type

`object` ([Details](limits.md))

# limits Properties

| Property          | Type      | Required | Nullable       | Defined by                                                                                                                                                                                        |
| :---------------- | :-------- | :------- | :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [cpu](#cpu)       | `integer` | Optional | cannot be null | [CloudRun Helm Chart](limits-properties-cpu.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/limits/properties/cpu")       |
| [memory](#memory) | `string`  | Optional | cannot be null | [CloudRun Helm Chart](limits-properties-memory.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/limits/properties/memory") |

## cpu

Maximum CPUs to allocate for the CloudRun container. Can be 1, 2, 4, 6, 8, or any fractional value from 0.01 to 1.

`cpu`

* is optional

* Type: `integer`

* cannot be null

* defined in: [CloudRun Helm Chart](limits-properties-cpu.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/limits/properties/cpu")

### cpu Type

`integer`

### cpu Default Value

The default value is:

```json
1
```

## memory

Maximum memory to allocate for the CloudRun container. Requires a minimum number of CPUs of 2 over 4GiB.

`memory`

* is optional

* Type: `string`

* cannot be null

* defined in: [CloudRun Helm Chart](limits-properties-memory.md "https://github.com/helmless/google-cloudrun#/properties/resources/properties/limits/properties/memory")

### memory Type

`string`
