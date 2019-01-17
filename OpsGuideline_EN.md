System operation guidelines
Introduction
Definition of terms
1. Basic idea of ​​guidelines
1.1 Purpose
1.2. Scope
1.3. Management of these guidelines
2. Configuration management and maintenance requirements
2.1. Account management
2.2. Server Maintenance
2.2.1. Monitoring
2.2.2. Backup
2.2.3. Log
2.2.4. SLA
2.3. Client terminal
2.4. Media management
2.5. LAN connection
3. Responding to vulnerabilities
3.1. Vulnerability management
3.1.1. Security Incident Definition
3.1.2. Management of security incidents
3.1.3. Server vulnerability address
3.1.4. Client vulnerability handling
3.2. Release
3.3. Troubleshooting
3.4. Outsourcing
3.4.1. Clarification of contents of consignment
3.4.2. Management of commissioned work
Introduction
In this guideline, guidelines on system operation in mediba are divided into the following major items, and they are respectively determined.

Definition of terms
Operation
Steady work that maintains the system.

Maintenance
System restoration and system update work

user
Service and system users.

1. Basic idea of ​​guidelines
1.1 Purpose
These guidelines are intended to facilitate the operation and maintenance work in the system.

1.2. Scope
It applies to operations related to system operation and maintenance work.

1.3. Management of these guidelines
Management of this guideline shall be the operation / maintenance department.
These guidelines shall be reviewed as appropriate when it is judged that review is necessary.
These guidelines are posted in places where they can be viewed from within the company.
2. Configuration management and maintenance requirements
2.1. Account management
Account management of the server taking security into consideration,

Make one account per account and not share accounts
Delete unused accounts immediately (such as retirees)
Change passwords on a regular basis
Grant only required authority
Account management by the operation / maintenance department
Issue accounts should be managed centrally
Be sure to document and keep account of execution of batch processing etc
2.2. Server Maintenance
2.2.1. Monitoring
To make fault finding early and make appropriate fault response possible

Make the following monitoring so that faults can be detected
Server, NW device System status (ping, health check, resource usage, etc.)
Process operation status
Presence / absence of batch success
Various logs
If an item to be monitored goes down, issue an alert
Determining the message for failure
2.2.2. Backup
System recovery at failure and backup of necessary data for investigation are performed to prevent data loss.

Determine the obstacles and the data to be backed up necessary for investigation
Disaster recovery
Database
Information file
setting file
Source code
Research
access log
Operation log
Other
Documents, etc.
Determining the backup method based on the characteristics of the data
time
real time
Stationary (hour, day, week, etc.)
method
All data, difference etc.
Determining the retention period of data according to the characteristics of the system
Determining the presence or absence of backup depending on the characteristics of the system
Do not keep the storage location with the backup source
Also consider failure handling of storage location
To review the backup policy
2.2.3. Log
Be sure to manage various logs. Compliance with the guidelines .

2.2.4. SLA
Consider introducing a service level agreement (SLA) in order to clarify the responsibility sharing of operation and maintenance work in the case of contract service or a wide range of players

When concluding an SLA, confirm whether necessary items are listed
The item of SLA is appropriate
Server availability
Application utilization rate
Reference response time achievement rate etc.
Check on a monthly basis whether the SLA was protected
Consider improvement of breach of SLA
2.3. Client terminal
When the client terminal is used for operation and maintenance work, it is managed from the following viewpoint.

Perform work only from terminals determined by maintenance requirements
Maintenance requirements of each system should be formulated through review by experts
The operation / maintenance section confirms that the terminal that is used satisfies the requirement
To manage information for securing the safety of the terminal to be used
Terminals to use should be centrally managed
Do not install unnecessary software
Implement antimalware measures such as antivirus software
Do not connect to the network other than the prescribed place · method
2.4. Media management
In principle, connection of external media is prohibited. However, when necessary for business, be sure to obtain management with permission from the responsible person. 
The medium to be used is managed according to the following.

The media to be used should be centrally managed by the operation / maintenance department and the use history should be recorded
Confirm that no virus etc is included before connection
Do not save data except during use
Store the medium in a lockable place
When discarding the medium, delete the data completely after deleting it
2.5. LAN connection
Each system shall have a management connection method capable of operation and maintenance work. Also consider the following points when considering the system configuration / connection method.

You can not connect for management from other than the specified place · method
Non-administrative connection can not be made by other persons in charge of operation / maintenance
Do not affect user communication due to heavy load of management connection or failure
3. Responding to vulnerabilities
3.1. Vulnerability management
We manage and respond to vulnerability information of OS and software making up the system and events that can pose a threat to other systems or elements thereof (hereinafter referred to as security incidents) in the operation / maintenance department.

3.1.1. Security Incident Definition
In this guideline, we define security incidents including the event that the following damage occurs and its "suspicious element".

Data destruction, tampering, leakage (eavesdropping, illegal taking out of information, etc.)
Stolen computer resources (such as unauthorized use of the system)
Disturbance of service (attack on server, etc.)
3.1.2. Management of security incidents
Clarify the management system, response system and communication system for security incidents
Regarding each structure, establish a structure according to the situation of incident detection and prepare to respond promptly in accordance with predetermined correspondence system and communication system respectively
Confirm the contents of the new vulnerability information promptly and check the use / non-use of the vulnerability target and the application status of the patch to each department
Judge it as an incident at the stage when suspicion of vulnerability attack etc. is detected and promptly report and investigate
When an incident occurs in the user environment, promptly contact the operation / maintenance department and related departments
Keep a record of each incident and its correspondence
Accrual date
detail
Target equipment
Action policy
Reason for judgment
Judgment manager
Action completion date
3.1.3. Server vulnerability address
In principle, taking into consideration the system impact and do not always update it
When patch application is necessary, conduct verification after sufficient verification
3.1.4. Client vulnerability handling
Managing security patches to be applied on the patch distribution server
Implement antimalware measures such as antivirus software
3.2. Release
In the maintenance work, when it is necessary to change to the system for the following reasons, release work is carried out based on the policies of each system.

When it is necessary to add a function to the service
When a vulnerability is found in the system
Other When judging that it is necessary to change at service maintenance department for service improvement
When carrying out the work, it will be implemented according to the risk based on the viewpoint below.

To clarify the work impact that occurs in advance
To organize the danger points in the work flow
Prepare a switch back means when abnormality occurs
At the time of release work, it is necessary to carry out with multiple names of workers and confirmers
Acquiring and storing work trail (work log, screen capture etc)
Store implementation date / time, implementer, change history, implementation result
Consider problems and efficiency improvement after release
3.3. Troubleshooting
In the event of a failure, in principle, service restoration is given top priority, and prompt response is made. Also, in order to make prompt response possible, prepare the following in advance.

Clarify the correspondence system and communication system
Understand the influence range for each failure point
Prepare recovery procedure for each failure point
After disaster restoration, consider recurrence prevention measures
3.4. Outsourcing
In consideration of work quality and operational efficiency, if outsourcing is deemed desirable, consult with the Information Security Committee on handling of information so that no information leakage or unlawful acts will occur, and implement it after obtaining permission.

3.4.1. Clarification of contents of consignment
When consigning work, clarify the following, obtain consent from the company, and agree with the contractor. Leave record as written agreement with outsourcer, and prevent obscurity of contract.

Contents of commissioned work (point of responsibility division)
Management and responsible persons and systems of consignor and contractor
Work place (connection method)
3.4.2. Management of commissioned work
In order to prevent acts other than entrusted work, consider and manage the following so that it will be the minimum necessary according to the work content and its risk.

Entrance possible range / entry and exit history
Usage account authority / work history
