variable "aws_profile" {
  description = "Set this variable if you use another profile besides the default awscli profile called 'default'."
  type        = string
  default     = "default"
}

variable "aws_region" {
  description = "Set this variable if you use another aws region."
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Vpc name that would be created for your cluster"
  type        = string
  default     = "EKS_vpc"
}

variable "aws_availability_zones" {
  description = "AWS availability zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cidr" {
  description = "Cird block for your VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "env" {
  description = "it would be a prefix for you cluster name created, typically specified as dev or test"
  type        = string
  default     = "dev"
}

variable "private_subnets" {
  description = "private subnets to create, need to have 1 for each AZ"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "public subnets to create, need to have 1 for each AZ"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "cluster_version" {
  description = "kubernetes cluster version"
  type        = string
  default     = "1.27"
}

variable "ami_type" {
  description = "Ami Type for Ec2 instances created in Cluster"
  type        = string
  default     = "AL2_x86_64"
}

# ===================== TRAEFIK HELM CONFIG VARS =======================

variable "enable_traefik_helm_release" {
  type        = bool
  default     = true
  description = "Enable/disable Traefik Helm chart deployment on EKS"
}

variable "traefik_helm_repo" {
  type        = string
  default     = "https://traefik.github.io/charts"
  description = "Traefik Helm chart repository URL"
}

variable "traefik_helm_chart" {
  type        = string
  default     = "traefik"
  description = "Traefik Helm chart name"
}

variable "traefik_helm_release_name" {
  type        = string
  default     = "traefik"
  description = "Traefik Helm release name"
}

variable "traefik_helm_chart_version" {
  type        = string
  default     = "20.8.0"
  description = "Traefik Helm chart version to deploy"
}
variable "traefik_helm_chart_timeout_seconds" {
  type        = number
  default     = 300
  description = "Timeout value for Helm chart install/upgrade operations"
}

variable "traefik_k8s_namespace" {
  type        = string
  default     = "traefik"
  description = "Kubernetes namespace to use for the Traefik Helm release"
}
