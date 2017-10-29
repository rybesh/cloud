# Get a disk image
```
$ ./get-disk-image.sh
```

# Start virtual machine
```
$ make ubuntu-16.04-server-cloudimg-amd64-disk1.img
```

# Make it public
```
$ su -
# ssh ryanshaw@localhost -L \*:80::8080 -L \*:443::4443 -N
```
