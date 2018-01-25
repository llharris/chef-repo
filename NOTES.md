# Chef Cheat-Sheet

#### Generate a cookbook structure

`chef generate app [NAME]`

Use the chef generate app subcommand to generate a cookbook structure that:

    * Supports multiple cookbooks (as many as needed to support an “application”)
    * Supports a top-level instance of Kitchen that can be used to test each cookbook in the application
    * Supports a single Policyfile.rb, which is an upcoming feature of the Chef development kit that defines a workflow around a set of cookbooks and related policy (such as roles, environments, and so on); for more information about Policyfile.rb, see the chef.lists discussions (search for “policyfile”)

#### Upload a cookbook to the Chef Server

`knife cookbook upload [NAME]`

#### Bootstrap a Linux Node

`knife bootstrap [IP_ADDRESS] --ssh-user [USERNAME] --sudo --identity-file [PATH_TO_PRIVATE_KEY] --node-name [NODE_NAME] --run-list 'recipe[RECIPE_NAME]'`

--run-list can be omitted.

#### Test WINRM Connection to Windows Node

`knife wsman test chef-node4 --manual-list`

#### Bootstrap a Windows Node (with run-list)

`knife 

#### Error Resolving Cookbooks for Run List

You haven't done a `knife cookbook upload [cookbook_name]`

#### List / Create / Destroy Kitchen Test Environments

`kitchen list`
`kitchen create`
`kitchen destroy`

#### Apply cookbooks specified in a run-list to a kitchen environment

`kitchen converge`

#### Execute a command inside a kitchen instance

`kitchen exec -c 'command'`

#### Testing Windows with Kitchen

If using vagrant you will need the winrm plugin:

`vagrant plugin install vagrant-winrm`

#### Generate a new recipe inside a cookbook

`cd /cookbook/directory`
`chef generate recipe [NAME]`