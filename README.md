# terraform-octue-twined-core
A Terraform module that deploys the core storage and IAM resources for an Octue Twined services network.  

# Resources
These resources are automatically deployed:
- An artifact registry repository for storing Octue Twined service revision docker images
- A BigQuery table acting as an event store for Twined service events
- IAM service accounts and roles for:
  - Any number of maintainers to use with Twined services
  - GitHub Actions to a) build and push Twined service images to the artifact registry; b) test services
- A workload identity pool and provider allowing GitHub actions to authenticate with google cloud
- A cloud storage bucket to store input, output, and diagnostics data for Twined services

# Installation and usage

> [!IMPORTANT]
> Deploying this Terraform module is a prerequisite to deploying the [terraform-octue-twined-cluster](https://github.com/octue/terraform-octue-twined-cluster). 
> module. You must deploy both to have a cloud-based Octue Twined services network.

> [!TIP]
> Deploy this module in a separate Terraform configuration (directory/workspace) to the [terraform-octue-twined-cluster](https://github.com/octue/terraform-octue-twined-cluster)
> module. This allows the option to spin down the Kubernetes cluster provided by the other module while keeping the core
> resources that contain all data produced by your Twined services. Spinning the cluster down entirely can save on 
> running costs in periods of extended non-use while keeping all data available.

# Input/output reference
