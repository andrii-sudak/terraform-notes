An example of a simple EC2 instance with a generated SSH key and inbound firewall rules for SSH.

You can change some parameters in the `variables.tf` file.

After deployment, you connect to the instance via SSH using `private_ssh_key`. To connect, use the public IPv4 from the `outputs.tf` file.

```bash
ssh -i private_ssh_key ubuntu@<public_ipv4>
```
