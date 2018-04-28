
# Test machines

- Windows 10pro with power shell
- Ubuntu

# Required

- Docker with compose
- mount volumn access for docker

# Testing

## docker-compose check go env

```bash
docker-compose run app go env
```

# Windows checking docker mount volumn feature script

```bash
docker run --rm -v d:\workdir:/workspace golang:1.10-alpine ls /workspace
```

Note: To solve windows mount volumn issue, try "Reset Credentials..." button in the Shared Drive settings.
