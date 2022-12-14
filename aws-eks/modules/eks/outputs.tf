output "cluster_id" {
  description = "EKS cluster ID."
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = var.cluster_name
}

output "kubeconfig" {
  value = jsondecode(templatefile("./kubeconfig.tftpl", {
    endpoint              = module.eks.cluster_endpoint,
    certificate_authority = data.aws_eks_cluster.cluster.certificate_authority[0].data,
    token                 = nonsensitive(data.aws_eks_cluster_auth.cluster.token)
    }
  ))
}
