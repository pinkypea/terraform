
#cloud-config


#  Install stuff
packages:
 - ntp
 - ntpdate
 - curl


# Override ntp with chrony configuration on Ubuntu
ntp:
  enabled: true
  ntp_client: chrony  # Uses cloud-init default chrony configuration


# Configure ubuntu user security
users:
  - default
  - name: trios
    lock_passwd: False
    passwd: $y$j9T$1zdDsbSKDp3TkLRhUuzck1$ro/h8yicPg82P89G/yg9Aj4QeLKDiAtvfjrR
     gecos: Trios
    groups: [adm, audio, cdrom, dialout, dip, floppy, lxd, netdev, plugdev]
     sudo: ["ALL=(ALL) NOPASSWD:ALL"]
     shell: /bin/bash
    

runcmd:
   - curl -sSL https://raw.githubusercontent.com/vmware/cloud-init-vmware-guestinfo/master/install.sh | sh -

#  Change some default passwords
chpasswd:
  list: |
    root:ubuntu
    trios:trios
  expire: False


#  Write to a log file (useing variables set in terraform) and show the ip on the console.
runcmd:
  - date >/root/cloudinit.log
  - hostnamectl set-hostname ${HOSTNAME}
  - echo ${HELLO} >>/root/cloudinit.log
  - echo "Done cloud-init" >>/root/cloudinit.log
  - ip a >/dev/tty1
  