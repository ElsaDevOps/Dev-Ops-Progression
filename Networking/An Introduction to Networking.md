****
# What is a Computer Network?
A Computer Network connects devices to share information and resources.
Examples include smaller network, such as a LAN (Local Area Network), like your home Wi-Fi and larger networks such as a WAN (Wide Area Network), like the Internet.

**Switches, Routers and Firewalls**
- **Switches** are like managers for your local network. They manage the data flow within a LAN and connect devices within a network.
- **Routers** direct traffic between different networks and connect different networks too.
- **Firewalls** Protect networks from unauthorised access and ensure that only safe data passes through

These components form the backbone of any network.

 ## IP addressing 

- Stands for Internet Protocol address
- Is a unique identifier assigned to each device on a network
- allows devices to locate and communicate with each other

**There are two main types of IP addresses:**
- **IPv4**: 32-bit numbers written in decimal format, consists of four groups of numbers separated by dots. Groups range from 0-256, makes around 4.3 billion unique addresses
- **IPv6**: 128-bit, written in hexadecimal, almost unlimited addresses (340 undecillion)

**MAC Addressing**

- A 48 bit hexadecimal address that operates on the data link layer.
- A unique identifier assigned to network interfaces like your phone or laptop
- Essential for network security and communication

**Ports and Protocols: TCP, UDP**

- **Port**: a logical endpoint for communication, where data enters and exits a device
- Different applications/services have their own dedicated ports to make it easier to manage traffic
- **Protocol**: A set of rules governing how data is transmitted over a network
- They ensure effective device communication by establishing standards for data format, timing, sequencing and error handling

Two main protocols:
- **TCP**: Transmission Control Protocol. Connection-oriented, requires "handshake", reliable. Used in email/file transfer/web-browsing
- **UDP**: User Datagram Protocol. Connectionless, faster but less reliable due to no connection establishment. Used for video streaming/gaming/DNS enquiries


## **OSI Model**

Stands for Open System Interconnection

This is a concept of the Internet and shows how packets travel through a network.

There are 7 layers

- Layer 1 is physical
- transmits raw bitstream over physical medium. Uses hardware like cables, wifi, switches. No device adressing

- Layer 2 is data frames etc
- Node to node data transfer, corrects mistakes in physical layer. uses switches and MAC addresses

- Layer 3 is IP
- Determines how data is sent to recipient. Uses IP addressing and routers

- Layer 4 is TCP/UDP. ports
- End to end connections, reliable data transfer to upper layers, segments/reassembles data

- Layer 5 - connection/session layer 
- Establishes/maintains/terminates connections, uses API's, Sockets. Manages sessions between applications

- Layer 6 - Presentation
- Translates data between application layer and network. Ensures data is in usable format. Uses encyrption 

- Layer 7 - App layer, HTTP, HTTPS etc -End user layer, provides network service directly to applications

==**TCP/IP model

Baby of OSI model

- Application Layer
  - HTTP, SMTP (Hypertext Transfer Protocol) - used for the webpages on the Internet. (Simple Mail Transfer Protocol) - electronic mail (email) transmission

- Transport Layer
  - TCP, UDP

- Internet Layer
     -  IP

- Network Access Layer
      -  Ethernet, Wireless, LAN

Shows what Internet is actually based off of. These protocols work together to specify how data should be gathered, addressed, transmitted and routed through a network.



# DNS (Domain Name System)

- Translates domain names to IP addresses
- Simplifies navigation on the internet 
- Essential for accessing websites and services
- Uses Name Servers
- Authoritative Name Servers hold actual DNS records, gives actual IP
- Recursive Name Servers query other name servers on behalf of the client to find correct DNS record. Also cache the information they retrieve to speed up future queries

**Zone Files
- Stored inside name servers, contain info about domain
- Organise DNS info in a readable way to make it easier to handle DNS records

**Records
- The components of a Zone file
- Contains specific info about hosts, nameservers and other resources
-
**Common components

|   |   |
|---|---|
|Record|Description|
|A|Address record (IPv4)|
|AAAA|Address record (IPv6)|
|CNAME|Canonical Name Record|
|MX|Mail Exchanger record|
|NS|Name server Record|
|PTR|Pointer Record|
|SOA|Start of Authority Record|
|SRV|Service Location Record|
|TXT|Text Record|
- A Record: Maps a domain name to an IPv4 address.

- AAAA Record: Maps a domain name to an IPv6 address


# DNS resolution
1.  User enters domain name e.g. google.com
2. Query is sent to DNS Resolver provided by ISP
3. If IP not cached, query is sent to Root Server
4. Query is sent to TLD Server
5. Query is sent to Authoritative Name Server
6. IP address returned to user.

**DNS common tools

**nslookup** - queries DNS server and returns IP adresses associated with a domain name

**dig** - Domain Information Groper- gives more info than nslookup e.g. the query made, the IP addresses, the query time and the DNS server involved


**/ect/hosts file*

- Local file that maps domain names to IP addresses
- Can allow you to provide alternate IP addresses for domains



# Routing

- The process of determining the paths that data packets take across a network to reach their destination. Have to select the best path
- **Routers** are devices which use routing tables in order to determine the best route for packets to take
- **Routing tables** contain info on network topology and available paths


**Static vs Dynamic Routing**
- Static Routing: Manually fixed routes, better for small networks
- Dynamic routing: automatically adjusts routes using routing protocols (OSPF, BGP). Better for larger scale networks which can experience many changes as it is adaptable


**Routing Protocols**
- **OSPF (Open Shortest Path First)**: quickly recalculates routes when there are network changes. Considers the cost & status of network
- **BGP (Border Gateway Protocol)**: Routes data between different autonomous systems on internet. 
# Subnetting

What is Subnetting?
- The process of dividing a network into smaller sub-networks, or subnets. This allows for better organisation and management of IP addresses within a network.

Why is it important?
- Reduces congestion, enhances network security via isolation, allows easier management of networks, minimises broadcast domains


**CIDR Notation**
- **CIDR** stands for Classless Inter-Domain Routing. 
- It's a method for allocating IP addresses and routing IP packets
- CIDR notation specifies an IP and the associated routing process in the following format: IP_address/prefix_length

**Subnet Masks**
- Used to divide IP addresses into the network and host portions. Written in decimal format , four octets separated by dots
- helps routers determine which part of IP address is network address and which part is host address

**NAT**
- Stands for **Network Address Translation**
- Translates private IPs within an internal network to a public IP for communication with external networks via router
- helps to conserve public IPs and provides security 

**NAT Types**
- Static NAT: Maps one private IP address to one public IP address
- Dynamic NAT: Uses a pool of public IP addresses and maps private IP addresses to the available public ones
- PAT: Stands for **Port Address Translation** AKA NAT overload. Maps multiple private IP addresses to a single public IP address by using different ports.

NAT makes devices like routers act like intermediaries between public and private networks.

# Network Troubleshooting
Common network issues
- Connectivity loss, can't access network -use ping command to test connectivity after checking all cables and devices are on and properly connected.

- Slow network performance
- IP address conflicts- two devices with same IP address
- DNS resolution failures 

**Useful commands**
- **ping**: Tests connectivity between your device and another device or server. 
- **Traceroute**:Tracks the path data takes to reach a destination, showing each hop along the route.
- **nslookup**:  Queries DNS servers to find IP addresses associated with domain names.


# Cloud Networking
- VPCs (Virtual Private Clouds):  Isolated section of the cloud where you can launch AWS resources in a virtual network that you define.
    
- Subnets: Subnets divide a VPC into smaller network segments, allowing you to group resources based on security and operational needs.
    
  Gateways: Gateways, like Internet Gateways and NAT Gateways, enable communication between your VPC and the outside world.
