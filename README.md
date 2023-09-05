# Creating EC2 instance using Terraform
In this project I used Terraform to create a Ubuntu EC2 instance.

Technologies Used
Terraform
AWS

Dependencies
Install Terraform - https://www.python.org/downloads/release/python-3106/
Install aws cli - https://aws.amazon.com/cli/

*
copy ami id from aws console for this one i used 
ami = "ami-053b0d53c279acc90"
this might change so you need to check in AWS console

Executing program
Download the repository to your computer go to project file
git clone https://github.com/sayedh/terraform-aws-Budgets
cd terraform-aws-Budgets
Configure your aws cli using your user's access/secret keys
> aws configure
AWS Access Key ID [None]: ****************H64O
AWS Secret Access Key [None]: ****************cYaR
Default region name [None]: us-west-1
Default output format [None]:
Now use Terraform to provision and setup the budget
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
Now the budget is created. Go to your AWS Budgets and see the newly created budget.

Updating the Budget
Change the budget details in the main.tf file UpdateBudget

Now once again apply the changes

terraform apply
