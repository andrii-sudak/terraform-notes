In this case, the user resources are in a list, and when we change the list (order), all user resources will be recreated according to the index order of the list.

```
# local_sensitive_file.name[0]:
resource "local_sensitive_file" "name" {
    content              = (sensitive value)
    content_base64sha256 = "Bn6vcpy+WzVa/nrwPgt3YA7bfa4EzLdjgaLnryYi+yY="
    content_base64sha512 = "obBpEeRZkKX0eeOkB072mQZoQIfjekr7gXopFOO9EzwSq80vDq1U2dkCig6Qv049mEF0PagUrhWP4kJkByfcEQ=="
    content_md5          = "552eab326573ebbd97dfcc6da60ed99b"
    content_sha1         = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
    content_sha256       = "067eaf729cbe5b355afe7af03e0b77600edb7dae04ccb76381a2e7af2622fb26"
    content_sha512       = "a1b06911e45990a5f479e3a4074ef69906684087e37a4afb817a2914e3bd133c12abcd2f0ead54d9d9028a0e90bf4e3d9841743da814ae158fe242640727dc11"
    directory_permission = "0700"
    file_permission      = "0700"
    filename             = "./users/one"
    id                   = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
}

# local_sensitive_file.name[1]:
resource "local_sensitive_file" "name" {
    content              = (sensitive value)
    content_base64sha256 = "Bn6vcpy+WzVa/nrwPgt3YA7bfa4EzLdjgaLnryYi+yY="
    content_base64sha512 = "obBpEeRZkKX0eeOkB072mQZoQIfjekr7gXopFOO9EzwSq80vDq1U2dkCig6Qv049mEF0PagUrhWP4kJkByfcEQ=="
    content_md5          = "552eab326573ebbd97dfcc6da60ed99b"
    content_sha1         = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
    content_sha256       = "067eaf729cbe5b355afe7af03e0b77600edb7dae04ccb76381a2e7af2622fb26"
    content_sha512       = "a1b06911e45990a5f479e3a4074ef69906684087e37a4afb817a2914e3bd133c12abcd2f0ead54d9d9028a0e90bf4e3d9841743da814ae158fe242640727dc11"
    directory_permission = "0700"
    file_permission      = "0700"
    filename             = "./users/two"
    id                   = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
}

# local_sensitive_file.name[2]:
resource "local_sensitive_file" "name" {
    content              = (sensitive value)
    content_base64sha256 = "Bn6vcpy+WzVa/nrwPgt3YA7bfa4EzLdjgaLnryYi+yY="
    content_base64sha512 = "obBpEeRZkKX0eeOkB072mQZoQIfjekr7gXopFOO9EzwSq80vDq1U2dkCig6Qv049mEF0PagUrhWP4kJkByfcEQ=="
    content_md5          = "552eab326573ebbd97dfcc6da60ed99b"
    content_sha1         = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
    content_sha256       = "067eaf729cbe5b355afe7af03e0b77600edb7dae04ccb76381a2e7af2622fb26"
    content_sha512       = "a1b06911e45990a5f479e3a4074ef69906684087e37a4afb817a2914e3bd133c12abcd2f0ead54d9d9028a0e90bf4e3d9841743da814ae158fe242640727dc11"
    directory_permission = "0700"
    file_permission      = "0700"
    filename             = "./users/three"
    id                   = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
}

# local_sensitive_file.name[3]:
resource "local_sensitive_file" "name" {
    content              = (sensitive value)
    content_base64sha256 = "Bn6vcpy+WzVa/nrwPgt3YA7bfa4EzLdjgaLnryYi+yY="
    content_base64sha512 = "obBpEeRZkKX0eeOkB072mQZoQIfjekr7gXopFOO9EzwSq80vDq1U2dkCig6Qv049mEF0PagUrhWP4kJkByfcEQ=="
    content_md5          = "552eab326573ebbd97dfcc6da60ed99b"
    content_sha1         = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
    content_sha256       = "067eaf729cbe5b355afe7af03e0b77600edb7dae04ccb76381a2e7af2622fb26"
    content_sha512       = "a1b06911e45990a5f479e3a4074ef69906684087e37a4afb817a2914e3bd133c12abcd2f0ead54d9d9028a0e90bf4e3d9841743da814ae158fe242640727dc11"
    directory_permission = "0700"
    file_permission      = "0700"
    filename             = "./users/four"
    id                   = "5424ca64b8ea16bacfb42cab138c277e189ad5ed"
}
```
