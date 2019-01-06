As it was requested I created this repo to store all the content related to the resolution of the "Final Stage Interview Task"

1- I created a new docker image based on [Nginx Demos](https://hub.docker.com/r/nginxdemos/hello) to suit the requirements of the exercise. This image is stored on














Helm chart (https://docs.bitnami.com/kubernetes/how-to/create-your-first-helm-chart/)
  helm install --name example2 ./mychart --set service.type=NodePort



Pasos
  minikube start
  helm init --service-account tiller --kube-context minikube
  helm init --upgrade (to fix `Error: could not find tiller`)


Get service url
  minikube service example-mychart --url

Secrets
  helm plugin install https://github.com/futuresimple/helm-secrets

helmfile
  https://github.com/roboll/helmfile

  descargar la ultima https://github.com/roboll/helmfile/releases
  sudo mv <archivo descargado> /usr/local/bin/helmfile
  sudo chmod 755 /usr/local/bin/helmfile
  helm plugin install https://github.com/databus23/helm-diff --version master

  si falla el delete ejecutar `helm delete --purge <release name>`

Sanitizar el chart
  helm lint ./mychart


multi environments
  https://github.com/roboll/helmfile/issues/273
  https://github.com/roboll/helmfile/issues/297 intenresante

Publish docker image
  cd <into docker image dir>
  docker build -t <Image>:<version> . #docker build --no-cache -t custom-nginx:v0.3 .
  docker login #user password
  docker tag custom-nginx ddedamian/<Image>:<version>
  docker push ddedamian/<Image>:<version>
