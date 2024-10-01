module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "fiap-tech-challenge-fase3"
  cluster_version = "1.30"          
  cluster_endpoint_public_access  = true
  enable_cluster_creator_admin_permissions = true

  
  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {}
    kube-proxy             = {}
    vpc-cni                = {}
  }

  vpc_id          = "vpc-0055ade1f9088e0fa"      
  subnet_ids         = ["subnet-0115b6d08158577bf", "subnet-0754183aca138c7aa"]
   
  
  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
  

  tags = {
    name      = "fiap_tech_challenge"
    Terraform = "true"
  }

}
