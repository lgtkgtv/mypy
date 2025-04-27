```bash

cat /etc/passwd 
    root:x:0:0:root:/root:/bin/bash
    daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
    bin:x:2:2:bin:/bin:/usr/sbin/nologin
    sys:x:3:3:sys:/dev:/usr/sbin/nologin
    :
    gnome-remote-desktop:x:996:996:GNOME Remote Desktop:/var/lib/gnome-remote-desktop:/usr/sbin/nologin
    ollama:x:998:994::/usr/share/ollama:/bin/false


cat /etc/passwd

    syslog:x:104:111::/home/syslog:/usr/sbin/nologin
    :

cat /etc/passwd | awk -F: '{print $1, $3, $7}' | grep /bin

    root 0 /bin/bash
    s 1000 /bin/bash

    sync 4 /bin/sync

    tss 106         /bin/false
    whoopsie 117    /bin/false
    speech-dispatcher 119 /bin/false
    gnome-initial-setup 125 /bin/false
    hplip 126       /bin/false
    gdm 127         /bin/false
    dhcpcd 129      /bin/false
    ollama 998      /bin/false

cat /etc/passwd | awk -F: '{print $1, $3, $7}' | grep /usr/sbin/nologin


    daemon 1 /usr/sbin/nologin
    bin 2 /usr/sbin/nologin
    sys 3 /usr/sbin/nologin
    games 5 /usr/sbin/nologin
    man 6 /usr/sbin/nologin
    lp 7 /usr/sbin/nologin
    mail 8 /usr/sbin/nologin
    news 9 /usr/sbin/nologin
    :

