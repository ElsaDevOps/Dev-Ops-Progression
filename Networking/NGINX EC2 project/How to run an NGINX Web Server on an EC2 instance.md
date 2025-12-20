In this README I will walk you through how to run an NGINX server on an AWS EC2 instance, and map it to a Cloudflare domain.


# 1. Buy a domain on Cloudflare
It can be an inexpensive one.

# 2. Launch an AWS EC2 Instance
You can use Amazon Linux AMI when setting up the instance. Open port 80 (HTTP) and port 443 (HTTPS) in the security settings, under inbound rules.
- Instance type: t3.micro
- Port 22 (SSH): your IP
- Port 80 and 443: 0.0.0.0/0

# 3. Copy the public IPv4 Address
Once you launch your instance, copy the public IPv4 address, which will be in the EC2 Instance summary. We will need it to 
set up the A record on Cloudflare.


# 4. Connect to the EC2 instance with SSH

Copy the code provided on the EC2 console under SSH client into your terminal. It should look something like this:

`shh -i "path/to/key.pem" ec2-user@<EC2_PUBLIC_IP>`

# 5.Install NGINX

Run the following commands in your terminal to install NGINX on your EC2 instance:

`sudo yum update`
`sudo yum install nginx`

# 6. Start NGINX Service
Type these commands into your terminal to start the Nginx service:

`sudo service nginx start`

`sudo systemctl enable nginx`

# 7. Login to your Cloudflare account and create an A record. Point this to your EC2 instance using the Public IPv4 address.

<img width="747" height="128" alt="a record" src="https://github.com/user-attachments/assets/03d276a6-7cd1-47ae-9a51-5a0bacf319e9" />


# 8.Confirm propagation in the terminal
Run this command in the terminal

`nslookup <your_domain_name>`

The Public IPv4 address and your domain name should appear.

# 9. Search your domain name in your browser and it should come up!
![giphy(https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExdHNkejZwc3VkMHZ3dGY0Z3FvaGx5NDR0NnpzMnBkYzFpMTk0NDhiZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/btqH7TbLi8xS3qUgNY/giphy.gif)](https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExdHNkejZwc3VkMHZ3dGY0Z3FvaGx5NDR0NnpzMnBkYzFpMTk0NDhiZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/btqH7TbLi8xS3qUgNY/giphy.gif)
