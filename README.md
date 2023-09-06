# Creating EC2 instance using Terraform
In this project I used Terraform to create a Ubuntu EC2 instance.
![image](https://github.com/mobenh/terraform-aws-ec2instance/assets/96225596/eafccabb-14ac-47d9-9a46-ad463252704a)

## Technologies Used
Terraform <br> 
AWS

## Dependencies
Install Terraform - https://developer.hashicorp.com/terraform/downloads <br> 
Install aws cli - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## Executing program
* Download the repository to your computer and then go to project file
```
git clone https://github.com/sayedh/terraform-aws-Budgets
cd terraform-aws-Budgets
```
* Create access key in AWS CLI
![image](https://github.com/mobenh/terraform-aws-ec2instance/assets/96225596/404e9e9b-6c60-42fc-bab5-0d92727f7dfe)
* Configure your aws cli using your user's access/secret keys
```
> aws configure
AWS Access Key ID [None]: ****************H64O
AWS Secret Access Key [None]: ****************cYaR
Default region name [None]: us-east-1
Default output format [None]:
```
* Copy ami id (free tier, Ubuntu, t2.micro) from aws console
```
ami = "ami-053b0d53c279acc90"
```
\* this might change so you need to check in AWS console

* Now use Terraform to provision and create EC2 instance
```
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```
Now the EC2 instance is created.
* Go to your AWS Budgets and see the newly created EC2 instance

## Modify instance
* Change any details like the tags section of main.tf then run
```
terraform apply
```

## Delete instance
run
```
terraform destroy
```
or delete the resource section of the main.tf file

## Docs
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
