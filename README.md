# ICT171 Cloud Server Project

## Cloud-Based Network Monitoring System Using Microsoft Azure and Netdata

---

# Project Overview

This project demonstrates the implementation of a cloud-based monitoring system hosted on Microsoft Azure using Ubuntu Linux, Nginx, and Netdata.

The system provides real-time monitoring of server performance including CPU usage, memory usage, network traffic, and system activity through a web-based dashboard.

---

# Live Website

https://thinleyict171.it.com

---

# Technologies Used

* Microsoft Azure
* Ubuntu Linux
* Nginx
* Netdata
* HTML
* CSS
* SSH
* Certbot
* Let's Encrypt SSL

---

# Features

* Cloud-hosted monitoring server
* Real-time performance monitoring
* Public domain configuration
* HTTPS secure connection
* Live monitoring dashboard
* Linux server administration
* Azure cloud deployment

---

# Azure Virtual Machine Setup

The project used Microsoft Azure Infrastructure as a Service (IaaS) to deploy an Ubuntu Linux virtual machine.

The following ports were configured:

| Port  | Purpose            |
| ----- | ------------------ |
| 22    | SSH                |
| 80    | HTTP               |
| 443   | HTTPS              |
| 19999 | Netdata Monitoring |

---

# Nginx Installation

```bash
sudo apt update
sudo apt install nginx -y
```

---

# Netdata Installation

```bash
bash <(curl -Ss https://my-netdata.io/kickstart.sh)
```

---

# HTTPS SSL Configuration

```bash
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx
```

---

# Screenshots

## Website Homepage

(Add screenshot here)

## Netdata Dashboard

(Add screenshot here)

## Azure VM Configuration

(Add screenshot here)

---

# Video Explainer

(Add video link here)

---

# Future Improvements

Future versions of the project may include:

* Multi-server monitoring
* Automated email alerts
* Downtime reporting
* User authentication
* Centralised monitoring systems

---

# Author

Thinley Wangmo
ICT171 – Introduction to Server Environments and Architectures
