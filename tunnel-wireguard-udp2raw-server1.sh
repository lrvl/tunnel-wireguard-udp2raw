udp2raw -s -l0.0.0.0:3330 -r 127.0.0.1:3333 -k "passwd" --raw-mode faketcp > /var/log/udp2raw-server1-send-UDP3333-over-TCP3330.log &
udp2raw -c -l0.0.0.0:8880 -r $SERVER2_IP:8880 -k "passwd" --raw-mode faketcp > /var/log/udp2raw-client1-receive-remoteUDP8888-as-localUDP8880.log &
