# GCP - Manage infrastructure as code with Terraform Cloud Build and GitOps

    We recommend following this tutorial for complete instructions. 

    https://cloud.google.com/architecture/managing-infrastructure-as-code


This option is for platform admins and operators who are looking for a strategy to predictably and repeatedly make changes to infrastructure. 

The guide assumes that you are familiar with Google Cloud, Linux, and GitHub. 

    The high-level steps of this option are as follows:

        Set up your GitHub repository.
        Configure Terraform to store state in a Cloud Storage bucket.
        Grant permissions to your Cloud Build service account.
        Connect Cloud Build to your GitHub repository.
        Change your environment configuration in a feature branch.
        Promote changes to the development environment.
        Promote changes to the production environment.
