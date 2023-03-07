

.PHONY: manifests

help:
	@echo "make manifests - generate manifests"
	@echo "make apply - apply them"


apply:
	kubectl apply -k .

manifests:
	# loki
	helm template  --repo https://grafana.github.io/helm-charts \
		--namespace loki --values values/loki.yml \
		loki loki-simple-scalable > manifests/loki.yml

	# promtail
	helm template  --repo https://grafana.github.io/helm-charts \
		--namespace loki --values values/promtail.yml \
		promtail promtail > manifests/promtail.yml

	# grafana
	helm template  --repo https://grafana.github.io/helm-charts \
		--namespace loki --values values/grafana.yml \
		grafana grafana > manifests/grafana.yml
