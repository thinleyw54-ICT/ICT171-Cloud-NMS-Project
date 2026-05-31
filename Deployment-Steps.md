# Deployment Steps

## Step 1: Create Microsoft Azure Virtual Machine

A new Ubuntu Linux Virtual Machine was created in Microsoft Azure to host the cloud-based monitoring environment.

Configuration:

* Operating System: Ubuntu Linux
* Cloud Platform: Microsoft Azure
* Public IP Address: Enabled
* SSH Access: Enabled

---

## Step 2: Connect to the Virtual Machine

Connected to the Azure Virtual Machine using SSH.

```bash
ssh -i C:\Users\thinl\Downloads\ICT171-VM-key.pem azureuser@20.2.86.127

```

Successful SSH access allowed remote administration of the server.

---

## Step 3: Update the Server

Updated package repositories and installed available updates.

```bash
sudo apt update
sudo apt upgrade -y
```

This ensured the server was fully updated before software installation.

---

## Step 4: Install Nginx Web Server

Installed Nginx to host the project website.

```bash
sudo apt install nginx -y
```

Verified Nginx service status:

```bash
sudo systemctl status nginx
```

Started and enabled Nginx:

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

Edited website files:

```bash
sudo nano index.html
sudo nano assignment1.html
sudo nano assignment2.html
sudo nano about
```
## Step 6: Install Netdata Monitoring Platform

Installed Netdata using the official installation script.

```bash
wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh
sudo sh /tmp/netdata-kickstart.sh
```

Verified Netdata service status:

```bash
sudo systemctl status netdata
```

Accessed the monitoring dashboard:

```text
http://<Public-IP>:19999
```

Netdata provides real-time monitoring of CPU usage, memory usage, disk activity, and network traffic.

---

## Step 7: Configure DNS

Configured DNS records to connect the custom domain to the Azure Virtual Machine.

DNS Record:

```text
A Record
```

Domain:

```text
thinleyict171.it.com
```

The A record was configured to point to the Azure Public IP address.

DNS propagation was verified after configuration.

---

## Step 8: Install SSL Certificate

Installed Certbot and the Nginx plugin.

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

Verified certificate:

```bash
sudo certbot certificates
```

Tested automatic renewal:

```bash
sudo certbot renew --dry-run
```

---

## Step 9: Restart Services

Restarted Nginx after configuration changes.

```bash
sudo systemctl restart nginx
```

Verified Nginx status:

```bash
sudo systemctl status nginx
```

Verified Netdata status:

```bash
sudo systemctl status netdata
```

---

## Step 10: Verify Deployment

Website:

```text
https://thinleyict171.it.com
```

Monitoring Dashboard:

```text
http://20.2.86.127:19999
```

The deployment was successfully completed and tested.

---

## Outcome

The Cloud-Based Network Monitoring System was successfully deployed using Microsoft Azure, Ubuntu Linux, Nginx, Netdata, DNS configuration, and HTTPS security. The final solution provides real-time monitoring capabilities through a web-based dashboard and demonstrates practical cloud computing and server administration skills.
