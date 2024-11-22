# CI/CD

Helmless is designed to be used in any CI/CD pipeline to deploy your container to the cloud provider of your choice. Since we use Github Actions as our CI/CD platform of choice, this guide will show you how to deploy your container to Google Cloud Run using Github Actions.  

Helmless provides a [Github Action][github-action] that you can use in your workflow to deploy your container to Google Cloud Run.

!!! info "Contributing other CI/CD Platforms"
    If you want to extend Helmless to other CI/CD platforms, we kindly ask you to get in touch and contribute to the project.

## Github Actions

Helmless provides a custom [Github Action][github-action] that you can use in your workflow to deploy your container to Google Cloud Run. But before you can use it you need to setup the correct permissions for the Github Action to access your Google Cloud Run project.

```yaml title="deploy.yml"
--8<-- "examples/github-cicd/deploy-cloudrun.yaml"
```

[github-action]: https://github.com/helmless/google-cloudrun-deploy-action