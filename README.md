# dev-spaces-custom-registry

## Build image

```
podman build -t quay.io/marolive/dev-spaces-custom-registry:1.0.7 .
```

## Push image

```
podman push quay.io/marolive/dev-spaces-custom-registry:1.0.7
```

## Create Dev Spaces custom registry

```
oc create -f resources/deployment.yaml --save-config
```

### Or update

```
oc apply -f resources/deployment.yaml
```

## Configure Dev Spaces

```
apiVersion: org.eclipse.che/v2
kind: CheCluster
metadata:
  name: checluster
  namespace: devspaces
spec:
  components:
    devfileRegistry:
      disableInternalRegistry: true
      externalDevfileRegistries:
        - url: 'https://<EXTERNAL_REGISTRY_ROUTE>'
```