module "aftvendtestIAM03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rvadde+ymus-vend121703@skepticservices.com"
    AccountName               = "AFT_Vend_Test_IAM_121703"
    ManagedOrganizationalUnit = "Workloads(ou-ty2s-ljetjmp9)"
  }

  account_tags = {
    "Environment" = "Workloads-NonProd"
    "Company" = "YMUS"
    "Business Unit" = "Applications"
  }

  change_management_parameters = {
    change_requested_by = "Trace3"
    change_reason       = "Testing the AFT Account Vending"
  }

  custom_fields = {
    group = "Non-Prod"
  }

  account_customizations_name = "AFT_Vend_Test_IAM_121703"
}

