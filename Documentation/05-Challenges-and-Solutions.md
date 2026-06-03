# Challenges and Solutions
## Challenge 1: Azure Virtual Machine Region Availability

### Problem

During the creation of the Microsoft Azure Virtual Machine, the preferred region was unavailable due to limited resource capacity. The selected VM size could not be deployed in the chosen region, which prevented the virtual machine from being created successfully.
<img width="1602" height="639" alt="Screenshot 2026-05-28 084824" src="https://github.com/user-attachments/assets/9a5a8916-a1e7-4462-a1d6-5be088de4964" />




### Solution

Alternative Azure regions were evaluated and a region with available resources was selected. The virtual machine configuration was then redeployed in the new region.

The deployment settings were reviewed to ensure:

* Region availability
* VM size compatibility
* Resource allocation
* Network configuration

### Result

The virtual machine was successfully deployed in an available Azure region, allowing the project to proceed with server configuration and website hosting.


## Challenge 2: Initial Website Deployment

### Problem

After installing Nginx, the custom website was not displaying correctly. The default Nginx page was shown instead of the project website.

### Solution

The website files were placed in the correct web directory:

```bash
cd /var/www/html
```

The HTML files were updated and Nginx was restarted:

```bash
sudo systemctl restart nginx
```

### Result

The custom project website became accessible through the Azure Virtual Machine public IP address.

---

## Challenge 3: DNS Configuration

### Problem

The custom domain name did not initially resolve to the Azure Virtual Machine.
<img width="984" height="520" alt="Screenshot 2026-05-28 92450" src="https://github.com/user-attachments/assets/503fdf93-b60f-40e3-951b-78b31f21a560" />




### Solution

An A Record was configured to point the domain name to the Azure Public IP address:

```text
Domain: thinleyict171.it.com
IP Address: 20.2.86.127
```

DNS propagation was monitored until the domain became active.

### Result

Users were able to access the website using the domain name instead of the server IP address.

---

## Challenge 4: SSL Certificate Installation

### Problem

The website initially operated over HTTP and was not secure.
<img width="856" height="462" alt="Screenshot 2026-04-09 93125" src="https://github.com/user-attachments/assets/a66e9d1a-812d-4149-8027-25e0feeaa462" />

### Solution

Installed Certbot and configured SSL certificates:

```bash
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d thinleyict171.it.com
```

Certificate renewal was tested:

```bash
sudo certbot renew --dry-run
```

### Result

HTTPS was successfully enabled and the website became secure.

---

## Challenge 5: Website Design Improvements

### Problem

The initial website design looked basic and lacked navigation features.
<img width="610" height="407" alt="Screenshot 2026-05-28 224423" src="https://github.com/user-attachments/assets/2614641f-23db-4665-8ad4-1f8b49e0d416" />


### Solution

A sidebar navigation system was developed using HTML and CSS. Additional pages were created for Assignment 1, Assignment 2, and About Me.

The website design was enhanced using:

* Cards
* Color gradients
* Professional typography
* Responsive layout

### Result

The final website provided a professional and user-friendly interface.

---

## Challenge 6: Real-Time Monitoring Integration

### Problem

Users required access to live system monitoring information.

### Solution

Netdata was installed and configured to provide real-time monitoring through a web dashboard.

Dashboard URL:

```text
http://20.2.86.127:19999
```

### Result

Users can monitor CPU usage, memory usage, network traffic, and overall server health in real time.

---

## Outcome

All deployment, networking, security, and website development challenges were successfully resolved. The final Cloud-Based Network Monitoring System provides a secure, scalable, and fully functional monitoring environment hosted on Microsoft Azure.
