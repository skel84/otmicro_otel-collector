SERVICE_NAME := otel-collector

build-dev:
	@echo "No Dockerfile detected for $(SERVICE_NAME); this workload still uses an upstream image."

build-prod:
	@echo "No Dockerfile detected for $(SERVICE_NAME); this workload still uses an upstream image."

render-dev:
	kustomize build kustomize/overlays/dev

render-prod:
	kustomize build kustomize/overlays/prod

deploy-dev:
	kubectl apply -k kustomize/overlays/dev

deploy-prod:
	kubectl apply -k kustomize/overlays/prod
