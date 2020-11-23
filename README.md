# Runtime Logging Config

Simple Java project to show how to configure logging at runtime. It starts the project with TRACE level for the ROOT component. Check the [run.sh](run.sh) script for more details.

Ideal flow: 
- Start the project (enabling ROOT logging at TRACE level)
- Check logging config via actuator
- Change logging config via actuator 

## Build

```
mvn clean package
```

## Run

```
./run.sh
```

## Logging actuator endpoint

* Get config for all components:
```
curl http://localhost:8080/actuator/loggers
```

* Change config logging for ROOT component to INFO:
```
curl -i -X POST -H 'Content-Type: application/json' -d '{"configuredLevel": "INFO"}' http://localhost:8080/actuator/loggers/ROOT
```:
