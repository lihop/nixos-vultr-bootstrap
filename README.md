Bootstraps a vultr server with nixos

Be sure to replace the public key with your own when you fork this


```
nix-env -iA nixos.gitMinimal

git clone https://github.com/lihop/nixos-vultr-bootstrap

cd nixos-vultr-bootstrap
./bootstrap.sh
```
At the end of the installation you will be prompted to enter a password for the root user. Do this, then go back to the the dashboard and remove the ISO.
