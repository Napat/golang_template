
# Required
- Powershell with docker & docker-compose
- Check docker shared drives first, if disable &  re-enable hyper-v then try "Reset Credentials..." button in the Shared Drive settings first.

# Testing
## Example testing docker-volumn mount feature is ok at `D:\workdir`
```
docker run --rm -v D:\workdir:/go/src/workspace golang:1.10-alpine ls /go/src/workspace
```
## docker-compose check go env
```
docker-compose run app go env
```
