# Support Engineer Challenge - Ossanna-Mario-Gabriele
This project shows the four exercise asked me from Claranet in date 16/12/2020

## Excercise 1
I wrote a script in bash that accepts three parameters, two strings and a directory name and with the use of a looping "for" and the "sed" command, it recursively replaces any occurrence of the first string with the second string for any file in the directory.

In addition to this brief explanation there are also comments in the excercise1.sh code.

## Excercise 2
I chose to write a bash script instead of a python script to deepen my knowledge of this language.
The script works fine, it does its job, but it could be improved by completely removing unnecessary files instead of simply not considering them.

An example of the output of my bash script in MacOS:

```
Directory: /usr/bin
148  #!/bin/sh
149  ����
150  #!/usr/sbin/dtrace
151  #!/usr/bin/perl
152  #!/usr/bin/perl5.18
153  #!/usr/bin/perl5.28
154  #!/usr/bin/perl5.30
155  #!/usr/sbin/dtrace
...
```

## Excercise 3
I wrote a cron string that every Sunday at 10pm creates a backup of the /home/user folder and sends it to the remote server user@192.168.1.100 via ssh.
The backup is saved in tar.gz format and the data is transferred using the scp protocol.

Cron string:

```
0 22 * * sun tar -czvf /tmp/backup_20-12-2020_22:00.tar.gz /home/user && scp /tmp/backup_20-12-2020_22:00.tar.gz user@192.168.1.100:/tmp/backup_20-12-2020_22:00.tar.gz
...
```

## Excercise 4
For this exercise I decided to use ansible because in my opinion it's an excellent software for automating the configuration and management procedures on unix-like and Windows systems and I think it also works very well. I wrote ansible playbooks so that wordpress can be configured on multiple distributions (in this case Ubuntu20.04 and CentOS-7).
I used Parallels Desktop as software to create VMs.

First of all I installed and configured ansible on a CentOS-8 VM (master VM), then I created an Ubuntu20.04-server VM and a CentOS-7 VM on which I will go to install and configure WordPress.
As a second step I created a small project that goes to "ansibleizzare" remote servers by sharing the public ssh key of the master VM and creating an ansible user.
Finally I created the scripts for the complete WordPress installation and setup.

I saw some problems with the different mysql configurations in the two distributions and also CentOS-7 by default installs PHP54 but the latest version of WordPress needs PHP56 so I tried to get around the problem as best I could and installed PHP56 on CentOS-7.
The code works, but it could be improved!

