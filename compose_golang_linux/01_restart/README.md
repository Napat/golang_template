# Execute docker-compose: run main.go in workspace
```
docker-compose run app go run main.go
```

Note: This method is obsolate because it need to restart container everytime we want to execute any command and it is hard to use `workspace/scripts` to init dev environment.
