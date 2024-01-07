```
| |_ ___ _ __ _ __ __ _ / _| ___  _ __ _ __ ___        _ __   ___ | |_ ___  ___ 
| __/ _ \ '__| '__/ _` | |_ / _ \| '__| '_ ` _ \ _____| '_ \ / _ \| __/ _ \/ __|
| ||  __/ |  | | | (_| |  _| (_) | |  | | | | | |_____| | | | (_) | ||  __/\__ \
 \__\___|_|  |_|  \__,_|_|  \___/|_|  |_| |_| |_|     |_| |_|\___/ \__\___||___/
```

## About

These are just my own notes that I make to help me remember.

Maybe they will be useful for someone else =)

## `taint` command

If you want to force a certain resource to be rendered instead of fully redeploying it.

## Debugging

We can use environment variables for better debugging and logging.

`TF_LOG=<log_level>`

Log levels: `INFO`, `WARNINIG`, `ERROR`, `DEBUG`, `TRACE`

Example:

```bash
export TF_LOG=TRACE
```

`TF_LOG_PATH=<path_to_log_file>`

Example:

```bash
export TF_LOG_PATH=/tmp/terraform.log
```
