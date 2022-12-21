resource "tfe_variable_set" "test_variable_set" {
  name         = "Test Variable Set"
  description  = "Variable set for testing."
  global       = false
  organization = "ananth-hashicorp-terraform-workshop"
}

resource "tfe_variable" "test-secret" {
  key             = "TEST_SECRET"
  value           = var.secret_value
  category        = "env"
  description     = "Test Secret injected via CI/CD"
  variable_set_id = tfe_variable_set.test_variable_set.id
}