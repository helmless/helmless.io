# Helmless Chart for Google Cloud Run

[![Documentation](https://img.shields.io/badge/docs-helmless.io-blue)](https://helmless.io/docs/docs/cloudrun/chart)
[![Version](https://img.shields.io/github/v/release/helmless/google-cloudrun-chart)](https://github.com/helmless/google-cloudrun-chart/releases)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/helmless/google-cloudrun-chart/release.yaml)](https://github.com/helmless/google-cloudrun-chart/actions/workflows/release.yaml)
[![semantic-versioning: helmless](https://img.shields.io/badge/semantic--versioning-helmless-e10079?logo=semantic-release)](https://github.com/helmless/google-cloudrun-chart/releases)
[![License](https://img.shields.io/github/license/helmless/google-cloudrun-chart)](https://github.com/helmless/google-cloudrun-chart/blob/main/LICENSE)

This [Helmless](https://helmless.io) chart generates a manifest compatible with [Google Cloud Run's YAML specification](https://cloud.google.com/run/docs/reference/yaml/v1), which can then be deployed using the `gcloud run services replace` command or the [helmless/google-cloudrun-deploy-action](https://github.com/helmless/google-cloudrun-deploy-action). Head to the [documentation](https://helmless.io/docs/cloudrun) for more information.

## Prerequisites

- [Helm](https://helm.sh/) v3.x
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- Access to a Google Cloud project and permissions to deploy to Google Cloud Run
- The `run.googleapis.com` API enabled on your project

## Usage

If you are new to Helmless I suggest you head to the [documentation](https://helmless.io/docs/) first. If you want to learn by doing or are already familiar with Helmless, continue reading.

1. You will need to create a `values.yaml` file to configure your deployment.

```bash
cat <<EOF > values.yaml
# yaml-language-server: $schema=https://raw.githubusercontent.com/helmless/google-cloudrun-chart/main/values.schema.json
name: 'my-helmless-service'
region: 'us-central1'
image: 'us-docker.pkg.dev/cloudrun/container/hello:latest'
env:
  COLOR: 'blue'
autoscaling:
  minScale: 0
EOF
```

2. Render the manifest using `helm template`:

```bash
helm template oci://ghcr.io/helmless/google-cloudrun -f values.yaml > cloudrun_manifest.yaml
```

3. Deploy the manifest using `gcloud run services replace`:

```bash
gcloud run services replace cloudrun_manifest.yaml
```

4. To clean up and delete the service, run the following command:

```bash
gcloud run services delete my-helmless-service --region=us-central1
```

## Configuration Reference

You can find the full configuration reference for the Helm chart in the [docs/values.md](./docs/values.md) file.
