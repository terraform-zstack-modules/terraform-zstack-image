<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_zstack"></a> [zstack](#requirement\_zstack) | 1.0.7 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_zstack"></a> [zstack](#provider\_zstack) | 1.0.7 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [zstack_image.image](https://registry.terraform.io/providers/ZStack-Robot/zstack/1.0.7/docs/resources/image) | resource |
| [zstack_backupstorages.image_store](https://registry.terraform.io/providers/ZStack-Robot/zstack/1.0.7/docs/data-sources/backupstorages) | data source |
| [zstack_images.existing_image](https://registry.terraform.io/providers/ZStack-Robot/zstack/1.0.7/docs/data-sources/images) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_architecture"></a> [architecture](#input\_architecture) | n/a | `string` | `""` | no |
| <a name="input_backup_storage_name"></a> [backup\_storage\_name](#input\_backup\_storage\_name) | n/a | `string` | `""` | no |
| <a name="input_context"></a> [context](#input\_context) | Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.<br/><br/>Examples:<pre>context:<br/>  project:<br/>    name: string<br/>    id: string<br/>  environment:<br/>    name: string<br/>    id: string<br/>  resource:<br/>    name: string<br/>    id: string</pre> | `map(any)` | `{}` | no |
| <a name="input_create_image"></a> [create\_image](#input\_create\_image) | n/a | `bool` | `false` | no |
| <a name="input_expunge"></a> [expunge](#input\_expunge) | n/a | `bool` | `true` | no |
| <a name="input_format"></a> [format](#input\_format) | n/a | `string` | `""` | no |
| <a name="input_guest_os_type"></a> [guest\_os\_type](#input\_guest\_os\_type) | n/a | `string` | `""` | no |
| <a name="input_image_name"></a> [image\_name](#input\_image\_name) | n/a | `string` | n/a | yes |
| <a name="input_image_url"></a> [image\_url](#input\_image\_url) | n/a | `string` | `""` | no |
| <a name="input_platform"></a> [platform](#input\_platform) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_image_uuid"></a> [image\_uuid](#output\_image\_uuid) | n/a |
| <a name="output_walrus_environment_id"></a> [walrus\_environment\_id](#output\_walrus\_environment\_id) | The id of environment where deployed in Walrus. |
| <a name="output_walrus_environment_name"></a> [walrus\_environment\_name](#output\_walrus\_environment\_name) | The name of environment where deployed in Walrus. |
| <a name="output_walrus_project_id"></a> [walrus\_project\_id](#output\_walrus\_project\_id) | The id of project where deployed in Walrus. |
| <a name="output_walrus_project_name"></a> [walrus\_project\_name](#output\_walrus\_project\_name) | The name of project where deployed in Walrus. |
| <a name="output_walrus_resource_id"></a> [walrus\_resource\_id](#output\_walrus\_resource\_id) | The id of resource where deployed in Walrus. |
| <a name="output_walrus_resource_name"></a> [walrus\_resource\_name](#output\_walrus\_resource\_name) | The name of resource where deployed in Walrus. |
<!-- END_TF_DOCS -->