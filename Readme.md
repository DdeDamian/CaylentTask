[![CircleCI](https://circleci.com/gh/DdeDamian/CaylentTask.svg?style=svg)](https://circleci.com/gh/DdeDamian/CaylentTask)
# Set up and tools used.

As it was requested I created this repo to store all the content related to the resolution of the "Final Stage Interview Task"

- For the creation of the base deployment I required to set up a few things first:
  - Minikube installation: To have a working Kubernetes locally we need this tool. [Minikube.](https://kubernetes.io/docs/setup/minikube/)
  - Basic Helm: We need it to crete and deploy the charts we create. [Helm Install.](https://docs.helm.sh/using_helm/#installing-helm)
  - Helm file: We need this tool to create the multi stage deployments. [Helmfile.](https://github.com/roboll/helmfile)
    ```
      $ wget <helm-version> # from https://github.com/roboll/helmfile/releases
      $ sudo mv <helm-version> /usr/local/bin/helmfile
      $ sudo chmod 755 /usr/local/bin/helmfile
      $ helm plugin install https://github.com/databus23/helm-diff --version master #This is required to define the diferences between releases.
    ```
  - Helm secrets: This is used to secure sensitive data.[Helm Secrets.](https://github.com/futuresimple/helm-secrets)
    ```
      $ helm plugin install https://github.com/futuresimple/helm-secrets
    ```

- I created a new docker image based on [Nginx Demos](https://hub.docker.com/r/nginxdemos/hello) to suit the requirements of the exercise. All the docker config is under  [Custom Nginx](https://github.com/DdeDamian/CaylentTask/tree/master/docker/nginx-hello) and the result of this build is stored in
[Dockerhub](https://cloud.docker.com/u/ddedamian/repository/docker/ddedamian/custom-nginx) under ddedamian/custom-nginx. So, the rest of the exercise will be develop using this image.
The main change on base image was to add some modification on the index file in order to show the environment we are working on and the revealed secret secure with helm secrets and Kubernetes secrets.

-

# Points of interest

## Helm

## Docker

## GCP


# Troubleshoot

  - After we made a `helmfile -e <env> delete` the next apply fails.
    The deletion not always cleans the release as we expect so we need to fully clean it, so to achieve this we need to run `helm delete --purge <release name>`
