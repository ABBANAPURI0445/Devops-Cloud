provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you're using version 1.x, the "features" block is not allowed.
    features {}
    
    subscription_id = "c8a652b5-e85f-4f75-8ab0-e067020be9da"
    client_id       = "30b44c53-d0d2-47b2-95b9-aaf837c1ed65"
    client_secret   = "b374a864-31df-4f2b-b556-9e9b28f05e01"
    tenant_id       = "832f003b-60d2-4552-9d44-e5f15301609c"
}