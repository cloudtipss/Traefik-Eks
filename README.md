# Traefik-Eks
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.16.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.12.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 19.16.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.1.2 |

## Resources

| Name | Type |
|------|------|
| [helm_release.traefik](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [random_string.suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_type"></a> [ami\_type](#input\_ami\_type) | Ami Type for Ec2 instances created in Cluster | `string` | `"AL2_x86_64"` | no |
| <a name="input_aws_availability_zones"></a> [aws\_availability\_zones](#input\_aws\_availability\_zones) | AWS availability zones | `list` | <pre>[<br>  "us-east-1a",<br>  "us-east-1b",<br>  "us-east-1c"<br>]</pre> | no |
| <a name="input_aws_profile"></a> [aws\_profile](#input\_aws\_profile) | Set this variable if you use another profile besides the default awscli profile called 'default'. | `string` | `"default"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Set this variable if you use another aws region. | `string` | `"us-east-1"` | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | Cird block for your VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | kubernetes cluster version | `string` | `"1.27"` | no |
| <a name="input_enable_traefik_helm_release"></a> [enable\_traefik\_helm\_release](#input\_enable\_traefik\_helm\_release) | Enable/disable Traefik Helm chart deployment on EKS | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | it would be a prefix for you cluster name created, typically specified as dev or test | `string` | `"dev"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | private subnets to create, need to have 1 for each AZ | `list` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | public subnets to create, need to have 1 for each AZ | `list` | <pre>[<br>  "10.0.4.0/24",<br>  "10.0.5.0/24",<br>  "10.0.6.0/24"<br>]</pre> | no |
| <a name="input_traefik_helm_chart"></a> [traefik\_helm\_chart](#input\_traefik\_helm\_chart) | Traefik Helm chart name | `string` | `"traefik"` | no |
| <a name="input_traefik_helm_chart_timeout_seconds"></a> [traefik\_helm\_chart\_timeout\_seconds](#input\_traefik\_helm\_chart\_timeout\_seconds) | Timeout value for Helm chart install/upgrade operations | `number` | `300` | no |
| <a name="input_traefik_helm_chart_version"></a> [traefik\_helm\_chart\_version](#input\_traefik\_helm\_chart\_version) | Traefik Helm chart version to deploy | `string` | `"20.8.0"` | no |
| <a name="input_traefik_helm_release_name"></a> [traefik\_helm\_release\_name](#input\_traefik\_helm\_release\_name) | Traefik Helm release name | `string` | `"traefik"` | no |
| <a name="input_traefik_helm_repo"></a> [traefik\_helm\_repo](#input\_traefik\_helm\_repo) | Traefik Helm chart repository URL | `string` | `"https://traefik.github.io/charts"` | no |
| <a name="input_traefik_k8s_namespace"></a> [traefik\_k8s\_namespace](#input\_traefik\_k8s\_namespace) | Kubernetes namespace to use for the Traefik Helm release | `string` | `"traefik"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Vpc name that would be created for your cluster | `string` | `"EKS_vpc"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connect_to_eks"></a> [connect\_to\_eks](#output\_connect\_to\_eks) | n/a |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
<!-- END_TF_DOCS -->