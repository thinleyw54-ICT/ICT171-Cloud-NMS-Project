# Deployment Steps

## 1. Connect to Azure Virtual Machine

```bash
ssh azureuser@<Public-IP>
```

Connected remotely to the Ubuntu Linux Virtual Machine hosted in Microsoft Azure.

---

## 2. Update the Server

```bash
sudo apt update
sudo apt upgrade -y
```

Updated system packages and security updates.

---

## 3. Install Nginx Web Server

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
```

---

## 4. Configure Website Files

Navigate to web directory:

```bash
cd /var/www/html
```

Edit website files:

```bash
sudo nano index.html
sudo nano assignment1.html
sudo nano assignment2.html
sudo nano about.html
sudo nano style.css
```

---

## 5. Install Netdata

```bash
wget -O /tmp/netdata-kickstart.sh https://my-netdata.io/kickstart.sh
sh /tmp/netdata-kickstart.sh
```

Access dashboard:

```text
http://<Public-IP>:19999
```

---

## 6. Configure Domain Name

Verified DNS records were correctly pointing to the Azure Public IP address.

Domain:

```text
https://thinleyict171.it.com
```

---

## 7. Install SSL Certificate

```bash
sudo apt install certbot python3-certbot-nginx -y
```

Generate certificate:

```bash
sudo certbot --nginx
```

Verify HTTPS:

```text
https://thinleyict171.it.com
```

---

## 8. Restart Services

```bash
sudo systemctl restart nginx
```

---

## 9. GitHub Version Control

Check repository status:

```bash
git status
```

Add files:

```bash
git add .
```

Commit changes:

```bash
git commit -m "Project update"
```

Push to GitHub:

```bash
git push
```

---

## Outcome

Successfully deployed a Cloud-Based Network Monitoring System using Microsoft Azure, Ubuntu Linux, Nginx, Netdata, DNS configuration, HTTPS security, and GitHub version control.
