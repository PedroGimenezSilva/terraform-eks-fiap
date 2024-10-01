resource "null_resource" "apply_argocd_applications" {
  provisioner "local-exec" {
    command = "kubectl apply -f ${path.module}/values-argocd.yaml"
  }

  depends_on = [
    helm_release.argocd
  ]
}