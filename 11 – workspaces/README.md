Example code for using workspaces.

In my case, it's `dev`, `test`, and `prod`.

`variables.tf` contains values for each separated workspace and the `main.tf` contains an example how to use workspaces
values.

Each workspace creates its own state file, and it also works with remote state.

[Terraform Workspaces](https://developer.hashicorp.com/terraform/language/state/workspaces)
