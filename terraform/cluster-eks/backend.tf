terraform {
  backend "s3" {
    bucket         = "fiap-terraform-state-bucket"  
    key            = "eks/fiap-tech-challenge-fase3/terraform.tfstate"     
    region         = "us-east-1"  
         
  }
}
