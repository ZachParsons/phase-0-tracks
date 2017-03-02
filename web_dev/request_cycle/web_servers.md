9.1 How the Web Works
Release 1: Research Web Servers
FIND THE THING

2. What are some of the key design philosophies of the Linux operating system?
Linux & its philosophy are derived from Unix & share much, especially the value of being open-source, whereby the original source code is freely available & able to be redistributed & modified. The design philosophy of Linux also includes an assumption of a computer literate or learning-positive user, & therefore is implemented with an unfearing mentality which doesn't try to hide the under-the-hood mechanisms of the computer or try to protect the user from making mistakes (no handholding / no GUI knows better). Key features that actualize the Linux philosophy are a) Command Line Interface (preferred over Graphic User Interface) & the plurality of ways to use it, b) the many commands useable in CLI to control the system without almost no limits c) the the ability to string together utilities into countless unforetold combinations.

Nine major tenets to the Linux philosophy
(Gancarz 2003: Linux and the Unix Philosophy)
1. Small is Beautiful
2. Each Program Does One Thing Well
3. Prototype as Soon as Possible
4. Choose Portability Over Efficiency
5. Store Data in Flat Text Files
6. Use Software Leverage
7. Use Shell Scripts to Increase Leverage and Portability
8. Avoid Captive User Interfaces
9. Make Every Program a Filter


3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A VPS refers to the software side of the server, it's roughly a partition a already existing computer hardware that acts as an isolated complete server & has protected access to a processor, storage, & memory while having ports to access the internet & process clients' http requests. It's useful to use a VPS when agility is needed - customizing, prototyping, scaling, remoteness, brevity, inexpensive, low-maintenance, more freedom than shared hosting, etc.

4. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
> Its advisable to not have the root user but rather a limited user account run programs to isolate/limit damage from user created bugs, stupidity, or malware, plus much work done on such systems can be done without root user permissions.