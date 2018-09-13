SHELL:=/bin/bash

create:
	kubectl create -f setup/jobmanager-service.yaml
	kubectl create -f setup/jobmanager-deployment.yaml
	kubectl create -f setup/taskmanager-deployment.yaml

delete:
	kubectl delete -f setup/jobmanager-deployment.yaml
	kubectl delete -f setup/taskmanager-deployment.yaml
	kubectl delete -f setup/jobmanager-service.yaml

start-proxy:
	kubectl proxy

launch-jobmanager-gui:
	open http://localhost:8001/api/v1/namespaces/default/services/flink-jobmanager:ui/proxy/#/overview
