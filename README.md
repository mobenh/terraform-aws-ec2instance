# Creating EC2 instance using Terraform
In this project I used Terraform to create a Linux EC2 instance.
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
git clone https://github.com/mobenh/terraform-aws-ec2instance.git
cd terraform-aws-ec2instance
```
* Create access key in AWS IAM
![image](https://github.com/mobenh/terraform-aws-ec2instance/assets/96225596/404e9e9b-6c60-42fc-bab5-0d92727f7dfe)
* Configure your aws cli using your user's access/secret keys
```
> aws configure
AWS Access Key ID [None]: ****************H64O
AWS Secret Access Key [None]: ****************cYaR
Default region name [None]: us-east-1
Default output format [None]:
```

* Now use Terraform to provision and create EC2 instance
```
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```
Now the EC2 instance is created.
* Go to your AWS EC2 and see the newly created EC2 instance

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
