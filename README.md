**Terraform IaC with GitHub Actions CI/CD**

This repository demonstrates a professional, multi-environment Infrastructure as Code (IaC) setup using Terraform and GitHub Actions. The project showcases industry-standard practices for building, testing, and deploying cloud infrastructure in a safe, automated, and collaborative manner.


**Key Concepts Demonstrated**

Remote State Management: Terraform state is managed remotely using an S3 bucket and protected against concurrent runs with a DynamoDB lock table.

Multi-Environment Structure: The project is organized into distinct dev and prod environments, ensuring strict isolation. Each environment has its own dedicated state file.

Reusable Modules: Infrastructure components (like the S3 bucket) are built as generic, reusable modules in the modules/ directory to promote DRY (Don't Repeat Yourself) principles.

Automated CI/CD Pipelines: GitHub Actions are used to automate the entire workflow, from validation to deployment.

Path Filtering: Workflows are efficiently triggered only when relevant files are changed (e.g., a change in environments/dev/ only triggers the dev pipeline).

GitOps Workflow: All infrastructure changes are managed through a standard Git workflow (feature branches, pull requests, and merges).


**CI/CD Workflow Breakdown**

The pipelines enforce a safe and predictable lifecycle for all infrastructure changes.


**On Pull Request**

A workflow is automatically triggered based on the path of the changed files.

The code is checked for proper formatting (terraform fmt).

A terraform plan is generated and posted in the PR for team review.

No infrastructure is changed at this stage.


**On Merge to main**

Merging a pull request is the event that approves the planned changes.

The corresponding workflow is triggered again.

A terraform apply is run automatically to apply the changes to the specified environment (dev or prod).

This ensures that the main branch is always a reflection of the live infrastructure state.
