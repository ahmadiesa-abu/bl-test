variable "region" {
  default     = "us-west-2"
  description = "AWS region"
}

variable "cluster_name" {
  description = "Name of EKS cluster to create"
}

variable "nodegroup_name" {
  description = "Name of EKS managed node group to create"
}

variable "kubernetes_version" {
  default     = "1.20"
  description = "Kubernetes version to deploy on EKS"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}
