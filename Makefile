SHELL:=/bin/bash

create:
	kubectl create -f setup/jobmanager-service.yaml
	kubectl create -f setup/jobmanager-deployment.yaml
	kubectl create -f setup/taskmanager-deployment.yaml

delete:
	kubectl delete -f setup/jobmanager-deployment.yaml
	kubectl delete -f setup/taskmanager-deployment.yaml
	kubectl delete -f setup/jobmanager-service.yaml
