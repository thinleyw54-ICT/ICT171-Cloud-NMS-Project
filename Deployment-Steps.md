# Deployment Steps

## Step 1: Create Microsoft Azure Virtual Machine

A new Ubuntu Linux Virtual Machine was created in Microsoft Azure to host the Cloud-Based Network Monitoring System.

Configuration:

* Cloud Provider: Microsoft Azure
* Operating System: Ubuntu Linux
* Public IP Address: Enabled
* SSH Access: Enabled

---

## Step 2: Connect to the Virtual Machine

Connected to the Azure Virtual Machine using SSH.

```bash
ssh -i C:\Users\thinl\Downloads\ICT171-VM-key.pem azureuser@20.2.86.127
```

This provided remote access to the server for administration and software installation.

---

## Step 3: Update the Server

Updated package repositories and installed system updates.

```bash
sudo apt update
sudo apt upgrade -y
```

This ensured the server was running the latest packages and security updates.

---

## Step 4: Install Nginx Web Server

Installed Nginx to host the project website.

```bash
sudo apt install nginx -y
```

Verified Nginx status:

```bash
sudo systemctl status nginx
```

Enabled Nginx:

```bash
sudo systemctl enable nginx
sudo systemctl start nginx
```

---

## Step 5: Configure Website Files

Navigated to the website directory:

```bash
cd /var/www/html
```

Created and edited website files:

```bash
sudo nano index.html
sudo nano assignment1.html
sudo nano assignment2.html
sudo nano about.html
sudo nano style.css
```

Restarted Nginx after making changes:

```bash
sudo systemctl restart nginx
```

---

## Step 6: Install Netdata Monitoring Platform

Installed Netdata for real-time monitoring.

```bash
wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh
sudo sh /tmp/netdata-kickstart.sh
```

Verified Netdata service:

```bash
sudo systemctl status netdata
```

Accessed the monitoring dashboard:

```text
http://20.2.86.127:19999
```

Netdata provides real-time monitoring of:

* CPU Usage
* Memory Usage
* Disk Activity
* Network Traffic
* System Health

---

## Step 7: Configure DNS

Configured DNS records to connect the custom domain to the Azure Virtual Machine.

DNS Record Type:

```text
A Record
```

Domain Name:

```text
thinleyict171.it.com
```

Azure Public IP Address:

```text
20.2.86.127
```

The DNS A record was configured to point the domain name to the Azure Public IP address.

DNS propagation was verified after configuration.

Website Access:

```text
https://thinleyict171.it.com
```

---

## Step 8: Install SSL Certificate

Installed Certbot and the Nginx SSL plugin.

```bash
sudo apt install certbot python3-certbot-nginx -y
```

Verified installation:

```bash
certbot --version
```

Generated SSL certificate:

```bash
sudo certbot --nginx -d thinleyict171.it.com
```

Verified certificates:

```bash
sudo certbot certificates
```

Tested automatic certificate renewal:

```bash
sudo certbot renew --dry-run
```

HTTPS was successfully enabled for the website.

---

## Step 9: Verify Deployment

Verified website accessibility:

```text
https://thinleyict171.it.com
```

Verified Netdata dashboard:

```text
http://20.2.86.127:19999
```

Checked service status:

```bash
sudo systemctl status nginx
sudo systemctl status netdata
```

---

## Outcome

The Cloud-Based Network Monitoring System was successfully deployed using Microsoft Azure, Ubuntu Linux, Nginx, Netdata, DNS configuration, and HTTPS security. The solution provides a secure and scalable monitoring environment with real-time performance monitoring and web-based accessibility.
