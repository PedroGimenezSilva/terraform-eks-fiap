data "aws_eks_cluster" "cluster" {
  name = "fiap-tech-challenge-fase3"
  depends_on = [ module.eks]

}


data "aws_eks_cluster_auth" "cluster_auth" {
  name = "fiap-tech-challenge-fase3"
}