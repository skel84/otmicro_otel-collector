# otmicro_otel-collector

Generated from the OpenTelemetry demo `Deployment` named `otel-collector`.

## Deploy

```bash
make -C . render-dev
make -C . render-prod
kubectl apply -k kustomize/overlays/dev
kubectl apply -k kustomize/overlays/prod
```

The base manifests are namespace-free. Overlays target:

- dev: `otmicro-dev`
- prod: `otmicro-prod`

## Build

No primary Dockerfile was detected for this workload. The generated manifests still reference an upstream image.


## Runtime Dependencies

- none detected from manifest env/command wiring

## Notes

These generated manifests keep the upstream service-to-service addresses. A single folder is now easier to build and release, but deploying it alone will still require its downstream services to exist.
