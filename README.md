# UTPB-COSC-4470-Project3-4
This repo contains the assignment and provided resources for Projects 3 and 4 of the Applied Network Security class.

## Project 3

### Project Goals:
1) Gain experience with managing network topologies
2) Gain experience working with virtual machines and creating plans of action for hardening systems
3) Gain experience writing and executing shell commands and bash scripts
4) Gain experience evaluating the security of a system and performing cost-benefit analysis

### Description:
Each group will select an eight-hour period during which they will have access to three servers running on an internal network.  One of the servers will be running a version of Metasploitable2 with some changes made to the user accounts.  Each group is expected to provide me with a user name and password to configure for their use, which will be accessible from outside via FTP, SSH, and Telnet.  The OS and version running on the other two servers I leave up to each group to decide how best to secure the overall virtual network (e.g. a firewall and an IDS/IPS).  Each will be configured to allow access via the same protocols and user/pass as the MS2 instance which you are attempting to defend.  To allow time for me to re-flash each server with the new operating systems as required, I will need at least eight hours between any two eight-hour periods (thus, no two groups may select contiguous windows - also, I do need to sleep sometimes).

The servers that you will be using are old, and as a result your selected operating systems can have (at most) minimum requirements of dual pentium 3 i386 processors at roughly ~1GHz each, 2GB total RAM at maximum 133MHz transfer rate, and up to 33GB HDD space.  This significantly limits the set of operating systems you can select and may limit the degree to which you can install updates on these systems once they are set up.

Keep in mind that when you first gain access to the systems that you have asked me to set up for your group, you may have to configure your chosen firewall to allow the SSH/Telnet protocol through so that you can gain access to the inner servers.

### Deliverables:
Each group will submit a written plan of action, including:
 * A list of the two operating systems you want set up on the servers that are not running Metasploitable, along with download links so that I can download and create install disks.
 * A description of the desired network topology consisting of a set of nodes (e.g. router, firewall, switch, IDS, web server) and a set of connections (e.g. router-firewall, firewall-switch, switch-IDS, switch-server).
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