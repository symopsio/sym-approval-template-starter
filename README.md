Sym Approval Flow Starter
==================

Example project demonstrating how [Sym Implementers](https://docs.symops.com/docs/deploy-sym-platform) use the [Sym SDK](https://docs.symops.com/docs) to create [Sym Flows](https://docs.symops.com/docs/flows) that use the [Sym Approval](https://docs.symops.com/docs/sym-approval) Template.

### Get started

This repo is a [GitHub Template Repository](https://help.github.com/en/articles/creating-a-repository-from-a-template). You can create a private copy by using the "Use this Template" link in the repo:

![Template Repo](https://help.github.com/assets/images/help/repository/use-this-template-button.png)

You should use the template to create a new **private** repo in your org, for example `mycompany/sym-approval-flows` or `mycompany/sym-approval-flow-starter`.

Once you've created a repository from the template, you'll want to `git clone` your new repo and `cd` into it locally.

#### Symflow CLI

Install the Symflow CLI to authenticate with the Sym Platform:

1. [Install](https://docs.symops.com/docs/install-sym-flow)
2. [Log In](https://docs.symops.com/docs/login-sym-flow)

### Integrations & Flows

This starter repo lets you easily manage Terraform configurations for both Sym resources and for the integration dependencies that Sym resources need in order to work.

The [`integrations`](integrations) folder is where you provision things like AWS IAM Roles and secrets that run in your infrastructure. The integrations folder also contains the Sym resources that reference these infrastructure dependencies.

The [`flows`](flows) folder contains that actual definition of a Sym Approval Flow. Flows use Sym Integrations to access your cloud infrastructure. Because Flows point to Sym Integrations rather than your cloud dependencies, your team can iterate on their Flows without needing direct access to your cloud resources.

#### Environments

Both the `integrations` and `flows` folders contain two starter environments: `prod` and `sandbox`. These environments solve the problem of how you can update and test your flows once you've already got users working with them. When you're just starting out, the prod and sandbox flows will typically look very similar.
