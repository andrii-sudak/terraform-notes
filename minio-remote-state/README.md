An example of remote state configuration via MinIO Object Storage. Where S3 stores the Terraform state file.

To prepare a MinIO bucket for it [minio-remote-state-preparation](../minio-remote-state-preparation)

If you want to hide credentials, use environment variables:

```bash
export AWS_ACCESS_KEY_ID=gMU05R8EOzoPa0K7oQ9T 
export AWS_SECRET_ACCESS_KEY=GvQJqawijgyZz2a0ML3CcOCRtjuE4DVNpedJTcmB
```
