## vpc Type

`object` ([Details](index.md))

# vpc Properties

| Property                  | Type     | Required | Nullable       | Defined by                                                                                                                                                |
| :------------------------ | :------- | :------- | :------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [connector](#connector)   | `string` | Optional | can be null    | [CloudRun Helm Chart](connector.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/connector")   |
| [egress](#egress)         | `string` | Optional | cannot be null | [CloudRun Helm Chart](egress.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/egress")         |
| [network](#network)       | `string` | Optional | can be null    | [CloudRun Helm Chart](network.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/network")       |
| [subnetwork](#subnetwork) | `string` | Optional | can be null    | [CloudRun Helm Chart](subnetwork.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/subnetwork") |

## connector

Name of the VPC connector to use for the CloudRun container. Uses a serverless VPC access connector. Cannot be used with network.

`connector`

* is optional

* Type: `string`

* can be null

* defined in: [CloudRun Helm Chart](connector.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/connector")

### connector Type

`string`

## egress

Name of the VPC egress to use for the CloudRun container.

`egress`

* is optional

* Type: `string`

* cannot be null

* defined in: [CloudRun Helm Chart](egress.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/egress")

### egress Type

`string`

### egress Constraints

**enum**: the value of this property must be equal to one of the following values:

| Value                   | Explanation |
| :---------------------- | :---------- |
| `"private-ranges-only"` |             |
| `"all-traffic"`         |             |

## network

Name of the VPC network to use to create a direct VPC connection. Must be used tohether with subnetwork. Cannot be used with connector.

`network`

* is optional

* Type: `string`

* can be null

* defined in: [CloudRun Helm Chart](network.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/network")

### network Type

`string`

## subnetwork

Name of the VPC subnetwork to use to create a direct VPC connection. Must be used together with network. Cannot be used with connector.

`subnetwork`

* is optional

* Type: `string`

* can be null

* defined in: [CloudRun Helm Chart](subnetwork.md "https://github.com/helmless/google-cloudrun#/properties/vpc/properties/subnetwork")

### subnetwork Type

`string`
