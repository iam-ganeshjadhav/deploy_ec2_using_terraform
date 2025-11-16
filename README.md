# 🚀 Deploy a Basic AWS EC2 Instance Using Terraform (Local Machine + VS Code)

This repository contains Terraform files to deploy a basic Amazon EC2 instance using your local machine and VS Code.
The setup is simple and beginner-friendly for learning Infrastructure as Code (IaC).

## 📌 Project Overview

This project uses Terraform to:

- Configure the AWS provider
- Launch a t2.micro EC2 instance
- Display the instance public IP

## 🛠️ Requirements

Make sure you have installed:

- Visual Studio Code
- Terraform
- AWS CLI
- AWS IAM User (Access Key + Secret Key)

## 📁 Project Structure
```bash
.
├── main.tf
└── README.md
```

## ⚙️ Steps to Deploy (VS Code Terminal)

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>
```

### 2️⃣ Configure AWS Credentials

**Run the command in VS Code terminal:**

```bash
aws configure
```
**Provide:**
```bash
AWS Access Key ID: YOUR_ACCESS_KEY  
AWS Secret Access Key: YOUR_SECRET_KEY  
Default region: ap-south-1  
Output format: json
```

### 3️⃣ Initialize Terraform
```bash
terraform init
```
### 4️⃣ View the Execution Plan
```bash
terraform plan
```
### 5️⃣ Deploy Resources
```bash
terraform apply
```
Type **yes** to confirm.

### 6️⃣ Destroy Resources (If Needed) 
```bash
terraform destroy
```
 
 ### 🧩 Example main.tf
 ```bash
 provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "basic" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

output "public_ip" {
  value = aws_instance.basic.public_ip
}
```

### 📤 Output

Terraform will show:

- EC2 Public IP  
- Instance ID  

### 📌 Project Status

| Item      | Details                                      |
|-----------|----------------------------------------------|
| Status    | 🟢 Working                                   |
| Conclusion| Deploys a basic EC2 instance with Terraform  |

### 👨‍💻 Author
 ***Ganesh Jadhav***
 
**Email:** jadhavg9370@gmail.com  
**GitHub:** https://github.com/iam-ganeshjadhav