# online_banking

•	ABSTRACT:
This project is aimed at developing an Online Banking for customer. The system is an online application that can be accessed throughout the organization and outside as well with proper login provided. 
•	OBJECTIVE:
The objective of the project is to create online banking system which provides facilities such as login to our account, check balance, Deposit money, withdraw money etc. Internet Banking is all about knowing our customer need and provide them with the right service at the right time through right channel 24*7 day a week.

	Project Description:

•	ABOUT THE PROJECT:
FIRSTRUST BANK is one of the most prestigious BANKs in India. Founded as a Public BANK in 1990 in Mumbai, it is a private institution run by the Mumbai BANK Society.

•	PURPOSE:
The Online Banking suite provides a global accounting foundation that provides the all private banks with electronic banking facilities. It allows client of private banks to carry out their day to day banking transactions.

•	SCOPE:
The Online Banking project is widely applicable with private banks. It can even be used in industries for their personal transactions (working).


•	Functional components of the project:
Following are the functional needs of the software:-
1. User must have a valid user Username and password to login to the system.
2. After the valid user logs in, the system shows the present balance in that particular account number.
3. User  can perform transactions like deposit and withdrawal from his account.

Software Requirement & Specification
	Software Required:
The project is implemented in Advanced Java using JSP, Servlet. The software’s required in the creation and execution of the project are  Eclipse or NetBeans. .As we know JAVA is a platform independent language so this software runs with JRE environment on any desired platform i.e. Linux ,windows 9x, XP, or 2000 or any operating system.
	Hardware Required:
Any System with Pentium P2 or above processor, 32MB RAM, 1GB Hard Disk, a LAN Card, and a CDROM is sufficient. Its network based software so computers connected with any kind of mode (wireless, LAN connected etc) will suit its requirements. It can also be run on a single machine for its demo use.

	Technologies and Requriments
IDE: My Eclipse
Front End:  JSP, JDBC, Javascript, 
Programming Language:   JAVA
Back End:  MySql Database (Workbench)
Server: Apache Tomcat/JBoss/Glassfish.

•	Non-Functional Requirements
1.	Secure access of confidential data (user?s details). SSL can be used.
2.	24 X 7 availability
3.	Browser testing and support for IE, NN, Mozila, and Firefox
4.	Reports exportable in .XLS, .PDF 

•	User Interface Priorities -Professional look and feel

How to run this project-
1-Create MySql Database name Bank with username and password set as root.
2-Execute the following queries in order to create table “banking”.
CREATE TABLE `banking` (
   `accnum` int() NOT NULL AUTO_INCREMENT,
   `first_name` varchar(20) DEFAULT NULL,
   `last_name` varchar(20) DEFAULT NULL,
   `username` varchar(250) DEFAULT NULL,
   `password` varchar(20) DEFAULT NULL,
   `address` varchar(45) DEFAULT NULL,
   `contact` varchar(45) DEFAULT NULL,
    ‘balance’ int() DEFAULT NULL,
   PRIMARY KEY (`accnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
3-Import the project on the IDE and run it on Apache Tomcat server.
4- Open registration\WebContent\WEB-INF\views\front.html


Welcome Page:
![](ssimg/1.PNG)

DATA FLOW DIAGRAM:
![](ssimg/dfd.PNG)

Collaboration diagram:
![](ssimg/collaboration.PNG)

Acitivity Diagram:
1-Login Process:
![](ssimg/activitydia.PNG)
![](ssimg/activity3&4.PNG)

OUTPUT SCREENS:
1.	Home Page:
![](ssimg/1.PNG)

2- Login page. Enter correct username and password: 
![](ssimg/login.PNG)

3- Account details displayed on the screen:
![](ssimg/Loginshow.PNG)

4-New User Account form. Fill Correct credentials:
![](ssimg/createacc.PNG)

On filling correct details:
![](ssimg/createsucces.PNG)

5- Check balance after logging in account:
![](ssimg/balance.PNG)

On filling correct details:
![](ssimg/checkbal.PNG)

6- Deposit form :
![](ssimg/deposit.PNG)

On filling correct details:
![](ssimg/checkdepo.PNG)

![](ssimg/checkdepobal.PNG)

7-Withdraw form:
![](ssimg/withdraw.PNG)

On filling correct details:
![](ssimg/withmsg.PNG)

8-Change password :
![](ssimg/changepass.PNG)

On filling correct details:
![](ssimg/showchangep.PNG)

9- Account closing form:
![](ssimg/Accclosing.PNG)

On filling correct details:
![](ssimg/msgclosing.PNG)


•CONCLUSION & SCOPE FOR FUTRURE DEVLOPMENT:

	CONCLUSION-
This project developed, incorporated all the activities involved in the browsing centre. The system provides quickly and valuable information. These modules have been integrated for effective use of the management for future forecasting and for the current need.

	SCOPE FOR FURTHER DEVELOPMENT-
The system can be designed for further enhancement .This could also be developed according to the growing needs of the customer.


•	BIBLIOGRAPHY-
	Reference websites
i.	www.javatpoint.com
ii.	www.w3schools.com
iii.	http://www.tutorialspoint.com/java/index.htm


