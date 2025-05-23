# UTPB-COSC-4470-Project3-4
This repo contains the assignment and provided resources for Projects 3 and 4 of the Applied Network Security class.

## Project 3

### Project Goals:
1) Gain experience with managing network topologies
2) Gain experience working with virtual machines and creating plans of action for hardening systems
3) Gain experience writing and executing shell commands and bash scripts
4) Gain experience evaluating the security of a system and performing cost-benefit analysis

### Description:
Each group will select an eight-hour period during which they will have access to two servers running on an internal network.  One of the servers will be running a version of Metasploitable2 with some changes made to the user accounts.  Each group is expected to provide me with a user name and password to configure for their use, which will be accessible from outside via FTP, SSH, and/or Telnet.  You definitely need terminal access via SSh in order to interact with the machines in any meaningful way.  If you are writing shell scripts (you probably should) in order to reduce the total time requirement, then you will also need a method of uploading files to the remote servers.  The FTP protocol provides this, and I believe that Telnet provides both, meaning that you need either FTP & SSH or - if you can confirm that Telnet does everything that you need - just Telnet.

The OS and version running on the other server I leave up to each group to decide how best to secure the overall virtual network (e.g. an IDS/IPS).  Each will be configured to allow access via the same protocols and user/pass as the MS2 instance which you are attempting to defend.  To allow time for me to re-flash each server with the new operating systems as required, I will need at least eight hours between any two eight-hour periods (thus, no two groups may select contiguous windows - also, I do need to sleep sometimes).

The servers that you will be using are old (Compaq ProLiant DL380 G1 and G2 machines ca. 2002), and as a result your selected operating systems can have (at most) minimum requirements of dual pentium 3 i386 processors at roughly ~1GHz each, 2GB total RAM at maximum 133MHz transfer rate, and up to 33GB HDD space.  This significantly limits the set of operating systems you can select and may limit the degree to which you can install updates on these systems once they are set up.

In order for your groups to have access to the systems in the internal network, I will also have to set up my router and modem with port forwarding to allow you through the two NAT layers.  Many of the free and open-source IDS systems you can opt to choose for your configuration provide web-based GUIs for things like writing SNORT rules and performing monitoring.  Similarly, many of them provide dedicated alarm and notification systems which either use web-based portals or send out alerts via specific ports.  Thus, in addition to submitting a selected operating system, each group has up to ten ports that they can nominate for forwarding.  Keep in mind that at least four of these must be used for: MS2 FTP, SSH, and HTTP ports and the SSH port for the other system.  This leaves you with up to six additional ports you can ask to be configured for your use.

### Deliverables:
Each group will submit a written plan of action, including:
 * A link to an install ISO of the operating system you want set up on the second server that is not running Metasploitable.
 * Up to two username and password pairs per server.
 * A description of the configuration you *would* perform on a firewall, if it were possible to configure one (rules, etc.) from an external portal.
 * A list of the (up to) ten ports you want to be opened for your use, in the form (WAN port to LAN IP:port) where "WAN port" is a number in the range (35000, 60000) and "LAN IP:port" is the operating system and port number for the desired service.
 * An outline of the planned hardening actions to be taken.
Assume that I will need at least a week to download your selected images and prepare disks.

### Grading Criteria:
1) Following the end of each group's period of access to the systems, I will perform some basic scans and attacks against them to determine whether they meet a minimum level of hardening/security.
2) The group which comes up with the most robust strategy for securing the web server will receive full points, and the other groups will receive points relative to the level of security they achieve.

## Project 4

### Project Goals:
1) Gain experience evaluating the security of a system.
2) Gain experience writing reports of actions taken.

### Description:
Project 4 is the second half of Project 3, in which you will write a report describing the process by which your group decided upon your chosen network topology etc. which you submitted in Project 3.  In addition, you will include any and all scripts you developed, a description of any difficulties you faced during the deployment of your patches, and citations for any resources you used to aid in the development of your approach.  You should also perform a self-evaluation of how effective you believe your approach/mitigation strategies were with regard to securing and hardening the systems, and if you are aware of any additional measures you could have taken but deemed too costly/time-consuming to pursue.

Following my evaluation phase of Project 3, I will provide the results of my scans and attacks against your systems so that you can evaluate how effective your strategies were.

### Deliverables:
A written after-action report meeting the requirements set forth above.  It should be formatted as though you are an IT professional explaining to the CTO the steps you took to mitigate identified vulnerabilities as determined by the outcome of a risk assessment.

### Grading Criteria:
1) The report should follow standards of format that we have previously established in Projects 1 and 2.
2) The report should be complete, concise, and direct.
3) Any relevant code listings should be included in appendices.