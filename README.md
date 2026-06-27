#  Linux Server Administration & AWS Monitoring Automation

A complete DevOps project demonstrating Linux server administration, monitoring, backup automation, security, and an end-to-end AWS alert automation pipeline using CloudWatch, SNS, SQS, Lambda, DynamoDB, and Grafana.

---

#  Project Overview

This project demonstrates real-world Linux Server Administration and AWS Cloud Monitoring.

The project includes:

- Linux Server Setup
- Server Configuration
- Server Monitoring
- Automated Backup
- Server-to-Server Synchronization
- Linux Security Hardening
- SSH Key Rotation
- Login Restrictions
- CloudWatch Monitoring
- CloudWatch Alarms
- SNS Notifications
- SQS Queue Processing
- AWS Lambda Automation
- DynamoDB Alert Storage
- Grafana Dashboard Visualization


---

graph TD
    %% Styling and Definitions
    classDef awsSubnet fill:#f9f9f9,stroke:#ff9900,stroke-width:2px,stroke-dasharray: 5 5;
    classDef compute fill:#eddcd2,stroke:#ff9900,stroke-width:2px,color:#000;
    classDef monitor fill:#e2ece9,stroke:#00a1c1,stroke-width:2px,color:#000;
    classDef msg fill:#dfe7fd,stroke:#ff4f40,stroke-width:2px,color:#000;
    classDef serverless fill:#f0efeb,stroke:#e056fd,stroke-width:2px,color:#000;
    classDef storage fill:#d8e2dc,stroke:#3c6e71,stroke-width:2px,color:#000;
    classDef external fill:#f7d1cd,stroke:#e76f51,stroke-width:2px,color:#000;

   graph TD
    %% Global Design Styles
    classDef vpc fill:#fdfdfd,stroke:#ff9900,stroke-width:2px,stroke-dasharray: 5 5;
    classDef ec2 fill:#fff2e6,stroke:#ff9900,stroke-width:2px,color:#000;
    classDef cw fill:#e6f7ff,stroke:#00a1c1,stroke-width:2px,color:#000;
    classDef sns fill:#ffe6e6,stroke:#ff4f40,stroke-width:2px,color:#000;
    classDef sqs fill:#f3e6ff,stroke:#a855f7,stroke-width:2px,color:#000;
    classDef lambda fill:#fffbeb,stroke:#d97706,stroke-width:2px,color:#000;
    classDef ddb fill:#e6fffa,stroke:#0d9488,stroke-width:2px,color:#000;
    classDef grafana fill:#22252b,stroke:#f89c1c,stroke-width:2px,color:#fff;

    subgraph VPC ["☁️ Amazon VPC"]
        direction TB
        
        %% Compute & Sync Layer
        subgraph EC2_Layer ["Compute & Replication"]
            EC1["💻 EC2 Server 1"]
            EC2["💻 EC2 Server 2"]
            EC1 <--> |"🔒 SSH"| EC2
            EC1 ---> |"🔄 Rsync Backup"| EC2
        end

        %% CloudWatch Monitoring Layer
        Agent["⚙️ CloudWatch Agent"]
        EC1 ==> |"Logs & Metrics"| Agent

        subgraph CloudWatch ["📊 Amazon CloudWatch"]
            direction LR
            Metrics["📈 Metrics"]
            Logs["📝 Logs"]
            Alarms["🔔 Alarms"]
        end
        Agent ==> CloudWatch
    end

    %% Routing Layer
    SNS["📢 Amazon SNS Topic"]
    Alarms ==> |"Breached Alert"| SNS

    Email["📧 Email Alerts"]
    SQS["📥 Amazon SQS Queue"]
    
    SNS --> |"Direct Page"| Email
    SNS ==> |"Buffer Payload"| SQS

    %% Automation & Database Layer
    Lambda["⚡ AWS Lambda"]
    Dynamo["🗄️ Amazon DynamoDB"]

    SQS ==> |"Event Trigger"| Lambda
    Lambda ==> |"Write Incident Record"| Dynamo

    %% Visualization
    Grafana["📊 Grafana Dashboard"]
    Dynamo ==> |"Query History"| Grafana
    CloudWatch -.-> |"Stream Live Metrics"| Grafana

    %% Assign Color Profiles
    class VPC vpc;
    class EC1,EC2 ec2;
    class Agent,Metrics,Logs,Alarms cw;
    class SNS sns;
    class SQS sqs;
    class Lambda lambda;
    class Dynamo ddb;
    class Grafana grafana;



#  Architecture

```
                           AWS Cloud
                               │
                         Amazon VPC
                               │
                ┌──────────────┴──────────────┐
                │                             │
          EC2 Server 1                  EC2 Server 2
                │                             │
                ├──── SSH Communication ──────┤
                ├──── Rsync Backup ───────────┤
                │
                ▼
      CloudWatch Agent
                │
                ▼
      Amazon CloudWatch
       ├── Metrics
       ├── Logs
       └── Alarms
                │
                ▼
        Amazon SNS Topic
          ├── Email Alerts
          └── Amazon SQS
                  │
                  ▼
            AWS Lambda
                  │
                  ▼
          Amazon DynamoDB
                  │
                  ▼
         Grafana Dashboard
```

---

#  Technologies Used

- Ubuntu Linux
- AWS EC2
- AWS VPC
- AWS CloudWatch
- AWS SNS
- AWS SQS
- AWS Lambda
- AWS DynamoDB
- Grafana
- Bash Scripting
- SSH
- Rsync
- Cron Jobs
- Git
- GitHub

---

#  Features

## 1. Linux Server Setup

- Launch Ubuntu EC2 Instance
- Install Required Packages
- Configure Hostname
- User Management
- Package Updates

---

## 2. Server Configuration

- Hostname Configuration
- Timezone Configuration
- Network Configuration
- Package Management

---

## 3. Server Monitoring

Monitored server resources using CloudWatch Agent.

### Metrics

- CPU Usage
- Memory Usage
- Disk Usage
- System Logs

---

## 4. Server Testing

Performed

- CPU Testing
- Memory Testing
- Disk Testing
- Network Testing

---

## 5. Backup Automation

Created automated backup scripts using Bash.

Features:

- Scheduled Backup
- Incremental Backup
- Backup Verification

---

## 6. Server-to-Server Synchronization

Implemented synchronization using Rsync.

Features:

- Passwordless SSH
- Automated Sync
- Synchronization Every 15 Minutes

---

## 7. Server Networking

Configured communication between servers.

- SSH
- Private IP Communication
- Network Verification

---

## 8. Linux Security

Implemented security best practices.

- AWS VPC
- Security Groups
- UFW Firewall
- Disable Root Login
- Disable Password Authentication

---

## 9. SSH Key Rotation

Implemented weekly SSH key rotation.

- Authorized Keys Update
- Cron Automation
- Secure Authentication

---

## 10. User Login Restriction

Configured server access.

- Single User Login
- Session Monitoring

---

# ☁️ AWS Monitoring Pipeline

## CloudWatch Agent

Installed and configured CloudWatch Agent on EC2.

Collected:

- CPU Usage
- Memory Usage
- Disk Usage
- Application Logs

---

## CloudWatch

Created alarms for:

- CPU > 70%
- Memory > 80%
- Disk > 80%

---

## Amazon SNS

Configured SNS Topic.

Features

- Email Notifications
- Alert Distribution

---

## Amazon SQS

Configured SQS Queue.

Purpose

- Receive CloudWatch Alarm Notifications
- Decouple Alert Processing
- Reliable Message Queue

---

## AWS Lambda

Created Lambda function to:

- Read messages from SQS
- Parse CloudWatch Alarm
- Process Alert Data
- Store Alerts into DynamoDB

---

## Amazon DynamoDB

Created AlertLog table.

Stored:

- Alert ID
- Alarm Name
- Alarm State
- Region
- Timestamp
- Alert Reason

---

## Grafana

Integrated Grafana with CloudWatch.

Dashboard Panels:

- CPU Usage
- Memory Usage
- Disk Usage
- CloudWatch Metrics
- Alarm Trends

---

#  Project Structure

```
Linux-Server-Administration/
│
├── README.md
├── scripts/
│   ├── server_setup.sh
│   ├── backup.sh
│   ├── rsync_sync.sh
│   ├── monitoring.sh
│   ├── rotate_ssh_keys.sh
│   ├── login_limit.sh
│   └── firewall_setup.sh
│
├── cloudwatch/
│   ├── amazon-cloudwatch-agent.json
│   ├── alarms.md
│   └── logs.md
│
├── lambda/
│   └── lambda_function.py
│
├── dynamodb/
│   └── table_schema.md
│
├── grafana/
│   └── dashboard.json
│
├── docs/
│   ├── Setup.md
│   ├── Monitoring.md
│   ├── Backup.md
│   ├── Security.md
│   └── Networking.md
│
└── screenshots/
```

---

#  Workflow

```
EC2
   │
CloudWatch Agent
   │
CloudWatch Metrics
   │
CloudWatch Alarm
   │
SNS Topic
   ├── Email Notification
   └── SQS Queue
          │
          ▼
      Lambda Function
          │
          ▼
     DynamoDB Table
          │
          ▼
 Grafana Dashboard
```

---

#  Skills Demonstrated

- Linux Administration
- AWS EC2
- AWS VPC
- AWS CloudWatch
- AWS SNS
- AWS SQS
- AWS Lambda
- AWS DynamoDB
- Grafana
- Bash Scripting
- Cron Jobs
- Rsync
- SSH
- Linux Security
- Server Monitoring
- Backup Automation
- Event-Driven Architecture
- Cloud Monitoring
- DevOps Automation

---

#  Screenshots

Include screenshots of:

- EC2 Instances
- CloudWatch Dashboard
- CloudWatch Alarms
- SNS Email Notification
- SQS Queue
- Lambda Function
- DynamoDB Table
- Grafana Dashboard
- Rsync Backup
- SSH Login
- Server Communication

---

#  Learning Outcomes

Through this project, I gained practical experience in:

- Linux System Administration
- AWS Cloud Services
- Infrastructure Monitoring
- Event-Driven Automation
- CloudWatch Monitoring
- Server Backup & Recovery
- Linux Security
- Networking
- Automation using Bash
- Server Synchronization
- Grafana Visualization
- AWS Lambda Development

---

#  Future Enhancements

- Docker
- Kubernetes
- Terraform
- Ansible
- CI/CD Pipeline
- Prometheus Integration
- Auto Scaling
- Disaster Recovery

---

# Author

**Ashutosh Shukla**

- B.Tech CSE (AI & ML)
- AWS Cloud & DevOps Enthusiast
- Linux System Administration
- Cloud Monitoring & Automation

⭐ If you found this project useful, please give it a **Star** on GitHub.
