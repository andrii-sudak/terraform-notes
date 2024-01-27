The simplest example of creating the MinIO S3 bucket for Terraform state file.

[MinIO Provider](https://registry.terraform.io/providers/aminueza/minio/latest/)

It will be better with ACLs, encryption and replication.

After creating this resource, you can configure the Terraform to use this remote state configuration.

To view secret values =)

```bash
terraform output -json
```

```bash
$ export MINIO_ENDPOINT="http://127.0.0.1:9000"
$ export MINIO_USER="minioadmin"
$ export MINIO_PASSWORD="minioadmin"
```
