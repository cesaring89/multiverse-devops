# multiverse-devops

Problem: We have to implement a Microservices Solutions using a Flexible approach, easy to maintain that makes use of integrates AWS services, the solutiom must:
    .- Run docker images that execute python code

To achieve this goal I decide the following tools

Amazon API Gateway: is a fully managed service that makes it easy for us create, publish, maintain, monitor, and secure APIs at any scale. API is the "front door". API Gateway supports containerized and serverless workloads, as well as web applications

AWS Lambda: Lambda is a compute services that lets us run code without provisioning or managing servers. Labda runs our code on a high-availability compute infrastructureand performs all of the administration of the compute resources, including server and operating system maintenance, capacity provisioning and automatic scaling, code monitoring and logging. That was the mos difficult decision because AWS let us run Docker image in many services We decide use lamba about other services like ECS, AKS or even run our docker image because this is a fully AWS managed serviced therefore save us time to use in another configurations.

Amazon ECR: Amazon ECR is a managed AWS Docker registry that is secure, scalable and reliable. We use this services to save our docker images in a safe and private way.

Dynamo DB: Amazon DynamoDB is a fully managed, serverless, key-value NoSQL database designed to run high-performance applications at any scale. DynamoDB offers built-in security, continuous backups, automated multi-region replication, in-memory caching, and data export tools. In this case we are assuming that we can save our data in a unstructured way, in case that we need save our data in a structured way we must implement a RDS Database.

S3 Bucket: Amazon S3 is an onject storage service. We scan store and protect any amount of data for virtually any use case. Amazon S3 stores data as objects within buckets. Anobject consists of a file and optionallyany metadatathat describe that file. To store an object in Amazon S3, we upload the file you want to store to a bucket. We decided to use this kind of storage because is easy to use, higly scalable and let us store any kind of file.

Extra:
IAM: IAM is an access management service that help us securely control access to AWS resources. In Amazon ECS, you can use IAM to control access at the container instance level using IAM roles and at the task level using IAM task roles. Also must define specific roles for access to every services and have more control in the way our services are accessed.

Gitlab CI: 
GitLab is an open source end-to-end software development platform with built-in version control, issue tracking, code review, CI/CD, and more.

We are using GitLab as VCS that let our developer work in the same project at the same time, once our developer update our code we can use the diferent tools that Gitlab give us to test the code, build our app and deploy to our infraestructure. Usig GitLab CI our pipelines run in a descentralized machine. In this way we can track, log and test our implementations. Basically we are working in this way.

1.- Our develop locally, once our code is tested locally we can update the code in our VCS.
2.- Our team review the changes in a collaborative way, is the code is good we can apply the changes in our remote repository.
3.- When the changes are applied GitLab CI can build the container image.
4.- If the image was build without problem GitLab CI can Publish the image to our ECR Register.
5.- Finally GitLab can Deploy the new Image to AWS Lamba.

Also we can use Gitlab CI to execute oru Terraform Code automatically.

