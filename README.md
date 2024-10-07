# helm-charts

## basic-postgresql-app

> [!IMPORTANT]  
> Configuration must be provided with a secret named `.Values.name + -config` (exampleApp-config) that contains the following values + applications configuration:
> - POSTGRESQL_USER
> - POSTGRESQL_PASSWORD
> - POSTGRESQL_DATABASE

A Helm chart a basic kubernetes app with a postgresql database included

Configuration [`values.yaml`]:

```yaml
name: <app name>

image:
  url: <application image url>
  version: <application image version>

network:
  port: <application port>
  routeEnabled: <boolean - create a route if true>
```



