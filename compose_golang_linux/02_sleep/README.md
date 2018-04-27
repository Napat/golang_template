
# Compose up app container(only first time of the day)
```
docker-compose up -d
```
Note:  
To stop and remove container
```
docker-compose down
```

# Execute the application(after compose up)
1. Remote to app container
```
docker-compose exec appsample sh
```

2. Setup env by using any scripts(optional)
```
cd /go/scripts
./setup.sh         # optional to setup some tools i.e., git
./gogetalllibs.sh  # optional for very first time project setup
```

3. Now env is ready! try any cmd as you which
```
cd /go/src/appsample
go run main.go
```
