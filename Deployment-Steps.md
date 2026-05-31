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
