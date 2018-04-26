
# compose up app container(only first time of the day)
```
docker-compose up
```

# Open another shell to execute the application
```
# 1. remote to app container
docker-compose exec app sh

# 2. run any cmd as you which
pwd
ls
go run main.go
```
