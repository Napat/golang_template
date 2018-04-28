# Howto

## Up container

Compose up container

```bash
docker-compose up -d
```

Note: Startup process may take long time at very first clone project because it automatic run `/go/scripts/setup.sh` script and install `dep` take very long time, btw these can be fixed if we create own image or newer golang version include `dep` by default.

To check daemon log

```bash
docker-compose logs
```

To stop and remove container(when you are finished)

```bash
docker-compose down
```

## Execute the application(after compose up)

1. Remote to container

```bash
docker-compose exec appsample sh
```

2. Setup environment by using any scripts(optional)

**NO NEED TO RUN this step because automatic run at container up**

```bash
/go/scripts/setup.sh            # Setup some tools i.e., git, golang/dep
source /go/script/dep_fix.sh    # workaround golang/dep(lock issue on container)
```

3. Environment is ready! Try any cmd as you which

```bash
ls /tmp/systemready         # ensure system is ready(see docker-compose command)
cd /go/src/appsample        # your app folder
dep ensure
go run main.go
go install appsample
ls -s /go/bin/appsample     # 2040 /go/bin/appsample
```
