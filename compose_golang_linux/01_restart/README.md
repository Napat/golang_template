# Execute docker-compose: run main.go in workspace
```
docker-compose run app go run main.go
```

Note: This method is obsolate because it slow to execute(container need to restart everytime we run the application) and it is hard to use `workspace/scripts` to init env.
