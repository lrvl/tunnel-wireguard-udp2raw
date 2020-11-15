udp2raw -s -l0.0.0.0:8880 -r 127.0.0.1:8888 -k "passwd" --raw-mode faketcp > /var/log/udp2raw-server2-send-UDP8888-over-TCP8880.log &
udp2raw -c -l0.0.0.0:3330 -r $SERVER1_IP:3330 -k "passwd" --raw-mode faketcp > /var/log/udp2raw-client2-receive-remoteUDP3333-as-localUDP3330.log &
