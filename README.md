Application
Repository: https://github.com/Vennilavanguvi/Brain-tasks-App.git
Runs on port 3000

 Docker
Dockerized the application using Dockerfile and built the image.

Kubernetes
Application deployed on AWS EKS using deployment and service YAML files.

CodeBuild
* Connected GitHub repository
* Used managed image (Amazon Linux)
* Build steps defined in buildspec.yml

 CodePipeline
* Source: GitHub
* Build: CodeBuild
* Deploy: EKS

Monitoring
Used CloudWatch logs to monitor application and pipeline.
