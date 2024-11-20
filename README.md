# Cloud Computing

## Lab 1

Creare una vm con terraform:
- type: e2-micro
- image: cos-cloud/cos-stable
- boot disk size: 25
- network interface: public ip


## Lab 2

Creare una github action che deploya un container con nginx sulla vm creata nel lab 1

## Lab 3 

Creare una github action che deploya un container nginx su k8s


## Link utili

### Cloud Provider
- https://cloud.google.com/docs
- https://docs.aws.amazon.com/
- https://learn.microsoft.com/en-us/azure/?product=popular

### Iac
- https://developer.hashicorp.com/terraform/docs
- https://docs.ansible.com/

### CI/CD
- https://docs.github.com/en/actions/about-github-actions/understanding-github-actions
- https://www.jenkins.io/doc/
- https://argo-cd.readthedocs.io/en/stable/


---

```
docker buildx build -t sftp sftp

mkdir key
docker run -p 22:22 -d -v key/:/home/alunno/ sftp

gcloud auth activate-service-account <sa-email> --key-file=<sa-key> --project itis-441214

export GOOGLE_APPLICATION_CREDENTIALS=<sa-key>

gcloud container clusters get-credentials itis --zone europe-west12-a
```

