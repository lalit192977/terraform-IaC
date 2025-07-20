provider "github" {
  token = var.tokenn
}

resource "github_repository" "example" {
  name        = "terraform-example-repo"
  description = "My awesome codebase"
  visibility = "public"
    auto_init = true
  
}



resource "github_repository_file" "readme" {
  repository          = github_repository.example.name
  branch              = "main"
  file                = "README.md"
  content             = "this is the repo created using the terraform (infrastructure as code)"
  commit_message      = "Managed by Terraform"
  commit_author       = "Lalit Kumar"
  commit_email        = "lalit192977@gmail.com"
  overwrite_on_create = true
}
