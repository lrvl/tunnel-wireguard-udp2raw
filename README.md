# tunnel-wireguard-udp2raw
Tunnel WireGuard UDP traffic over TCP using udp2raw

## Prerequisites

* Install WireGuard on server and client
* Adjust WireGuard interface to use smaller MTU=1280
* Running WireGuard server
* Install or compile https://github.com/wangyu-/udp2raw-tunnel

## Usage

* On WireGuard SERVER 1
    * Start tunnel-wireguard-udp2raw-server1.sh
* On WireGuard SERVER 2
    * Start tunnel-wireguard-udp2raw-server2.sh
    
## Example WireGuard configurations

Example WireGuard SERVER1 configuration **wg0.conf** 

```
[Interface]
Address = 10.10.10.1/32
PrivateKey = cP/qYOURSERVERPRIVATEKEYGOESHEREfsfad9Llfkc=
ListenPort = 3333
MTU=1280

[Peer]
PublicKey = oEzMV/70AjYOURCLIENTPUBLICKEYGOESHEREOewPPVQ=
AllowedIPS = 10.10.10.2/32
Endpoint = 127.0.0.1:8880
```

Example WireGuard SERVER2 configuration **wg0.conf**

```
[Interface]
PrivateKey = ++YOURCLIENTPRIVATEKEYYOURCLIENTPRIVATEKEY!=
Address = 10.10.10.2/32
ListenPort = 8888
MTU = 1280

[Peer]
PublicKey = YOURPUBLICKEYGOESHEREYOURPUBLICKEYGOESHERE!=
AllowedIPs = 10.10.10.1/32
Endpoint = 127.0.0.1:3330
```

## Validated setups

Known to work on:

* Linux
* FreeBSD
* Windows
* WireGuard Go version by Jason A. Donenfeld

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

* 2020 November 15 - Initial version

## Credits

* Jason A. Donenfeld for WireGuard tunnel interfaces
* wangyu0 for udp2raw-tunnel
* Glenn Chappell for figlet

## BSD 2-Clause License

Copyright (c) 2019, Leroy van Logchem
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
