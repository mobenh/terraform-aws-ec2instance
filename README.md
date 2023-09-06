# Creating EC2 instance using Terraform
In this project I used Terraform to create a Ubuntu EC2 instance.
![image](https://github.com/mobenh/terraform-aws-ec2instance/assets/96225596/eafccabb-14ac-47d9-9a46-ad463252704a)

## Technologies Used
Terraform
AWS

## Dependencies
Install Terraform - https://www.python.org/downloads/release/python-3106/

## Executing program
* Download the repository to your computer and then go to project file
```
git clone https://github.com/sayedh/terraform-aws-Budgets
cd terraform-aws-Budgets
```
* Create access key in AWS CLI
![image](https://github.com/mobenh/terraform-aws-ec2instance/assets/96225596/404e9e9b-6c60-42fc-bab5-0d92727f7dfe)
  * Modify main.tf file with your access and secret key
  ```
  access_key = "Your-access-key"
  secret_key = "Your-seceret-key"
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

## Docs
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
