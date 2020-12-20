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


