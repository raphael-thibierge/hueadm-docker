# hueadm-docker
Simple docker image to run [`bahamas10/hueadm`](https://github.com/bahamas10/hueadm) inside
a container.


- Find your hue bridge (has open ports : `80`, `8080`, `443`)
```bash
nmap 192.168.0.1/24 -p 80,8080,443 --open
```

- Create API user
```bash
docker run --rm rthibierge/hueadm hueadm --host={BRIDGE_ADDRESS} create-user {USERNAME}
# sending request... press the link button on the hue bridge
# -
#     success: {username: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx}
```
Note : `xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx` is your tocken

- Get lights status
```bash
docker run --rm rthibierge/hueadm hueadm --host={BRIDGE_ADDRESS} --user={TOKEN} lights
```

- Add alias in your `~/.bashrc` for simple usage (don't forget white space at the end)
```bash
alias hueadm='docker run --rm rthibierge/hueadm hueadm --host={BRIDGE_ADDRESS} --user={TOKEN}'
```

- Update your shell
```
exec $SHELL
```

- Enjoy !
```bash
hueadm lights
```
