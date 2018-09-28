# Puppet Bold Docker Container
### Usage
This project builds a docker container using the [`bolt`](https://puppet.com/docs/bolt/0.x/bolt.html) command line program from Puppet. 

Bolt is an open source task runner that automates the manual work that you do to maintain your infrastructure. Use Bolt to automate tasks that you perform on your infrastructure on an as-needed basis, for example, when you troubleshoot a system, deploy an application, or stop and restart services. Bolt connects directly to remote nodes with SSH or WinRM, so you are not required to install any agent software.

You can use this version with the following:
```shell
docker run -i -t cdrobey/bolt:latest <command>