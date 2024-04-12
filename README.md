Message Oriented App using NATS.io and TCL Programming Language
-----------------------------------------------------------------------

This project is an university project to implement a **Message Oriented Application**, coded on **TCL Programming Language**. It is to pratically use the Publisher - Subscriber type of communication on Distributed Systems.

-----------------------------------------------------------------------
**_HOW TO USE_**

Inside of this folder has two files: **publisher.tcl** and **subscriber.tcl** which needs a NATS server and TCL Shell to run.

-----------------------------------------------------------------------

**_WINDOWS USERS_**

**0-** Nats and TCL needs to be installed on the machine in order to work properly. **NATS** Please go to https://nats.io/download/ to download or directly to https://github.com/nats-io/nats-server/releases/tag/v2.10.14 and download **nats-server-v2.10.14-windows-select_your_version.zip**. This is the stable version and upon unzip, run the nats-server.exe, as a **Prompt will appear**. **TCL** Please go to https://www.tcl3d.org/bawt/download.html and download **BAWT 2.3.1 Tcl-Bl - Windows Installer 8.6.13** which is the stable version and run the setup. Please keep in mind to install the proper **32 bit or 64 bit** version.

**1-** Next, open two **Windows PowerShell** on this folder _or navigate to this folder on the PowerShell using the cd command_.

**2-** On first window, please run **tclsh subscriber.tcl** and press enter.

**3-** On the second window, please run **tclsh publisher.tcl** and press enter.

**4-** The publisher will send 100 messages to the subscribers, as there are Subscriber A, B and C.

-----------------------------------------------------------------------

**_LINUX USERS_**

**0-** **TCL** Normally TCL comes with the OS. If not, please install as usual for your linux machine. **NATS** As TCL, it is possible to install as usual for your linux machine or if preferable you can go to https://nats.io/download/ to download or directly to https://github.com/nats-io/nats-server/releases/tag/v2.10.14 and download **nats-server-v2.10.14-linux-select_your_version.zip**. This version is stable and it is simple to run.

**1-** After installing please open two **Terminals** on this folder _or navigate to this folder on Terminal using the cd command_.

**2-** On first window, please run **tclsh subscriber.tcl** and press enter.

**3-** On the second window, please run **tclsh publisher.tcl** and press enter.

**4-** The publisher will send 100 messages to the subscribers, as there are Subscriber A, B and C.


-----------------------------------------------------------------------

**_OBSERVATIONS:_**

THE DEFAULT FILE RUNS ON SAME MACHINE ON LOCALHOST. IF NEEDED TO RUN ON OTHER MACHINE PLEASE REFER TO BOTH PUBLISHER.TCL AND SUBSCRIBER.TCL FILE, AT **$conn configure -servers nats://localhost:port** AND CHANGE **_LOCALHOST_** FOR THE DESIRED IP ADDRESS AND PORT OF THE SERVER MACHINE, AND THE FILE NATS-SERVER TO BE IN THE SERVER MACHINE OF YOUR CHOICE. PLEASE REMEBER TO OPEN THE PORT ON BOTH MACHINES AS FIREWALLS MIGHT BLOCK THEM.
