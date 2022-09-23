# Supporting Material for `Microservices at Scale`

## Project

[![CircleCI](https://circleci.com/gh/cgebbe/DevOps_Microservices.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

### Summary

The project goal is to operationalize a working machine learning microservice using kubernetes and also setup a bit of CI.

### Relevant files

The files for the project are located at [project-ml-microservice-kubernetes](project-ml-microservice-kubernetes). The most important files are:

| file               | description                                         |
| ------------------ | --------------------------------------------------- |
| app.py             | application file                                    |
| model_data/        | directory containing necessary files for prediction |
| run_docker.sh      | script to create and run a docker container         |
| upload_docker.sh   | script to upload a docker image                     |
| run_kubernetes.sh  | script to deploy container to a kubernetes cluster  |
| make_prediction.sh | script to test prediction by `curl`ing a port.      |

### How to use

Install requirements such as `docker`, `kubectl` locally. Then:

```bash
# run app locally
source run_docker.sh
source make_prediction.sh

# deploy app to kubernetes
source upload_docker.sh
source run_kubernetes.sh
source make_prediction.sh
```

## Supporting Material

See the [original README](original_README.md) for information about the supporting material.
