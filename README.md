# helm-charts

Review [this reference](https://helm.sh/docs/howto/chart_releaser_action/) to understand how to use GitHub as a Helm repository.

## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add clbartolome https://clbartolome.github.io/helm-charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
clbartolome` to see the charts.

To install the <chart-name> chart:

```sh
helm install my-<chart-name> clbartolome/<chart-name>
```
    
To uninstall the chart:

```sh
helm delete my-<chart-name>
```

## Charts

### basic

A Helm chart with the minimum configuration for tutorials.

Use this command to generate the template:
```sh
helm template . --set name=demo,port=8080,replicas=3,image=openshift/hello-openshift,routeEnabled=true
```

Configuration [`values.yaml`]:

```yaml
name: <app name>

image: <application image url>:<application image version>

replicas: <app replicas>

port: <application port>

routeEnabled: <boolean - create a route if true>
```

### basic-config

A Helm chart with the minimum configuration for tutorials + configuration.

Configuration [`values.yaml`]:

```yaml
name: <app name>

image: <application image url>:<application image version>

replicas: <app replicas>

port: <application port>

routeEnabled: <boolean - create a route if true>

config:
  enabled: true
  data:
    <KEY>: "<value>"

secret:
  enabled: true
  data:
    <KEY>: "<value>"
```

Use this command to generate the template:
```sh
helm template . -f values.yaml
```

## Charts

### basic-postgresql-app

> [!IMPORTANT]  
> Configuration must be provided with a secret named `.Values.name + -config` (exampleApp-config) that contains the following values + applications configuration:
> - POSTGRESQL_USER
> - POSTGRESQL_PASSWORD
> - POSTGRESQL_DATABASE

A Helm chart for basic kubernetes app with a postgresql database included

Configuration [`values.yaml`]:

```yaml
name: <app name>
environment: <app environment>

image:
  url: <application image url>
  version: <application image version>

network:
  port: <application port>
  routeEnabled: <boolean - create a route if true>
```



