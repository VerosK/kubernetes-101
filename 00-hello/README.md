# Our first Deployment

based on https://github.com/paulbouwer/hello-kubernetes

## Tasks

* get `kubectl` and `k9s`

* find out `kubeconfig` location

* switch to `default` namespace

* apply the deployment and create service

      kubens default
      kubectl apply -f deployment.yml

* check application http://your-hostname:8080/

* kill the pods with k9s, watch dem

## Advanced tasks

* scale number of replicats application

* change env.variable `MESSAGE` to change the page message

## Do cleanup

    kubens default
    kubectl apply -f deployment.yml

