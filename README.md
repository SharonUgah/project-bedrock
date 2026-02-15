# Project Bedrock — Production-Grade AWS EKS Deployment

Cloud Infrastructure & Microservices Platform on AWS  
Built with Terraform, Amazon EKS, CI/CD & Serverless Automation  

---

##  Engineer

**Sharon Ugah**  
Cloud DevOps Engineer  
Barakat — Third Semester Capstone  

---

##  Company

InnovateMart Inc.  
Global E-commerce Platform  

---

##  AWS Region

us-east-1 (N. Virginia)

---

##  Project Overview

Project Bedrock delivers InnovateMart’s first production-ready Kubernetes platform on AWS.

The solution provisions cloud infrastructure using Infrastructure as Code, deploys a microservices retail application, enables centralized logging and secure developer access, and extends functionality with event-driven serverless automation.

---

##  Architecture Summary

### Core Platform

• Amazon EKS Cluster — `project-bedrock-cluster`  
• Custom VPC — `project-bedrock-vpc`  
• Multi-AZ Public & Private Subnets  
• Secure IAM roles following least-privilege  

### Application Layer (Namespace: `retail-app`)

Microservices:

- UI  
- Catalog  
- Cart  
- Orders  
- Checkout  

In-cluster services:

- MySQL  
- PostgreSQL  
- Redis  
- RabbitMQ  
- DynamoDB Local  

---

##  Observability

Centralized logging implemented with:

- EKS Control Plane Logs  
- Application Container Logs  

All logs streamed to Amazon CloudWatch for monitoring and troubleshooting.

---

##  Security & Access Control

Dedicated IAM developer user configured with:

- AWS Console Read-only access  
- Kubernetes RBAC read-only permissions  
- Secure access to S3 assets bucket  

This enables safe troubleshooting without administrative privileges.

---

##  Serverless Automation

Event-driven workflow implemented using:

- Private S3 Assets Bucket  
- AWS Lambda Function: `bedrock-asset-processor`  

When files are uploaded to S3, Lambda automatically processes and logs activity in CloudWatch.

---

##  CI/CD Automation

GitHub Actions pipeline automates infrastructure:

- Pull Request → Terraform Plan  
- Merge to Main → Terraform Apply  

All credentials secured using repository secrets.

---

##  Application Access

The Retail Store application runs inside the EKS cluster and is accessible via Kubernetes service forwarding for development and testing.

---

##  Bonus Implementation

AWS Load Balancer Controller installed to enable ALB-based ingress.

Public ALB provisioning was limited due to IAM role attachment constraints on the managed node group, while core platform functionality remains fully operational.

---

##  Resource Governance

All AWS infrastructure is consistently tagged for cost tracking and governance:

**Project: barakat-2025-capstone**

---

##  Repository Contents

- Terraform Infrastructure Code  
- CI/CD Pipeline Configuration  
- Kubernetes Manifests & Helm Values  
- Lambda Function Code  
- Architecture Assets  
- Grading Outputs  

---

##  Outcome

✔ Fully automated AWS infrastructure  
✔ Production-ready Kubernetes platform  
✔ Secure developer access  
✔ Centralized logging & monitoring  
✔ Serverless event processing  
✔ CI/CD enabled cloud operations  

---

### 📌 Project Status: Successfully Deployed & Operational
