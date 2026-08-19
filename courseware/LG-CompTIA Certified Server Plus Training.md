# CompTIA Certified Server+ Training — Learner Guide

**WSQ Course Code:** TGS-2024048318  |  **Conducted by:** Tertiary Infotech Academy Pte Ltd (UEN 201200696W)  |  **Version v4.1 · 19 August 2026**

## Document Version Control Record

| Version | Date | Description | Author |
|---|---|---|---|
| 3.0 | 1 May 2025 | Previous release — CompTIA Certified Server+ (SK0-005) master trainer slides and learner guide. | Tertiary Infotech Academy |
| 4.0 | 19 August 2026 | Rebuilt courseware from the single-source pipeline: Learner Guide with step-by-step guides for all 33 hands-on Killercoda labs across the four SK0-005 exam domains (18/30/24/28%), plus an Exam Focus section on RAID formulas, subnetting, security and the troubleshooting methodology. | Dr Alfred Ang |
| 4.1 | 19 August 2026 | Restructured each lab into its own folder with guidelines/cheatsheet/worksheet PDFs and CSV+Excel mock data; added Linux/Kubernetes/Docker lab environments and bonus container/Kubernetes assets. | Dr Alfred Ang |

## Contents

- [Introduction](#introduction)
- [Course Learning Outcomes](#course-learning-outcomes)
- [Before You Start — Environment Setup](#before-you-start--environment-setup)
- [Topic 01 — Server Hardware Installation and Management  (18%)](#topic-01--server-hardware-installation-and-management--18)
  - [Lab 1 — Server Form Factors, Racking, and Power Planning](#lab-1--server-form-factors-racking-and-power-planning)
  - [Lab 2 — Storage Deployment: RAID 0/1/5/6/10 with mdadm](#lab-2--storage-deployment-raid-015610-with-mdadm)
  - [Lab 3 — LVM Provisioning and Capacity Planning](#lab-3--lvm-provisioning-and-capacity-planning)
  - [Lab 4 — Shared Storage: NAS (NFS/CIFS) and SAN (iSCSI)](#lab-4--shared-storage-nas-nfscifs-and-san-iscsi)
  - [Lab 5 — Out-of-Band Management, BIOS/UEFI, and Firmware](#lab-5--out-of-band-management-biosuefi-and-firmware)
- [Topic 02 — Server Administration  (30%)](#topic-02--server-administration--30)
  - [Lab 6 — Installing a Server OS (Unattended / Scripted)](#lab-6--installing-a-server-os-unattended--scripted)
  - [Lab 7 — Partition and Volume Types, File Systems](#lab-7--partition-and-volume-types-file-systems)
  - [Lab 8 — IP, VLAN, DNS, DHCP, FQDN, and Hosts File](#lab-8--ip-vlan-dns-dhcp-fqdn-and-hosts-file)
  - [Lab 9 — Server Firewall and Port Management](#lab-9--server-firewall-and-port-management)
  - [Lab 10 — Server Roles: Web, File, and Database](#lab-10--server-roles-web-file-and-database)
  - [Lab 11 — Directory Services with OpenLDAP](#lab-11--directory-services-with-openldap)
  - [Lab 12 — Performance Monitoring, Baselining, Event Logs](#lab-12--performance-monitoring-baselining-event-logs)
  - [Lab 13 — Data Migration and Transfer](#lab-13--data-migration-and-transfer)
  - [Lab 14 — High Availability: Clustering, Load Balancing, NIC Teaming](#lab-14--high-availability-clustering-load-balancing-nic-teaming)
  - [Lab 15 — Virtualization with KVM / QEMU](#lab-15--virtualization-with-kvm--qemu)
  - [Lab 16 — Scripting Basics for Server Administration](#lab-16--scripting-basics-for-server-administration)
  - [Lab 17 — Asset Management, Documentation, and Licensing](#lab-17--asset-management-documentation-and-licensing)
- [Topic 03 — Security and Disaster Recovery  (24%)](#topic-03--security-and-disaster-recovery--24)
  - [Lab 18 — Data at Rest (LUKS) and Data in Transit (TLS/SSH)](#lab-18--data-at-rest-luks-and-data-in-transit-tlsssh)
  - [Lab 19 — Physical and Environmental Security Walk-Through](#lab-19--physical-and-environmental-security-walk-through)
  - [Lab 20 — Identity & Access Management for Server Administration](#lab-20--identity--access-management-for-server-administration)
  - [Lab 21 — Multi-Factor Authentication with TOTP (PAM)](#lab-21--multi-factor-authentication-with-totp-pam)
  - [Lab 22 — Auditing, Logging, and SIEM Basics](#lab-22--auditing-logging-and-siem-basics)
  - [Lab 23 — OS and Application Hardening](#lab-23--os-and-application-hardening)
  - [Lab 24 — Patch and Update Management](#lab-24--patch-and-update-management)
  - [Lab 25 — Secure Decommissioning and Media Destruction](#lab-25--secure-decommissioning-and-media-destruction)
  - [Lab 26 — Backup Strategy: Full, Incremental, Differential, Snapshot](#lab-26--backup-strategy-full-incremental-differential-snapshot)
  - [Lab 27 — Disaster Recovery: Replication and Site Failover](#lab-27--disaster-recovery-replication-and-site-failover)
- [Topic 04 — Troubleshooting  (28%)](#topic-04--troubleshooting--28)
  - [Lab 28 — Troubleshooting Methodology Walk-Through](#lab-28--troubleshooting-methodology-walk-through)
  - [Lab 29 — Troubleshooting Common Hardware Failures](#lab-29--troubleshooting-common-hardware-failures)
  - [Lab 30 — Storage Troubleshooting](#lab-30--storage-troubleshooting)
  - [Lab 31 — OS and Software Troubleshooting](#lab-31--os-and-software-troubleshooting)
  - [Lab 32 — Network Connectivity Troubleshooting](#lab-32--network-connectivity-troubleshooting)
  - [Lab 33 — Security Troubleshooting](#lab-33--security-troubleshooting)
- [Exam Focus — Cross-Cutting Server+ Topics](#exam-focus--cross-cutting-server-topics)
- [Exam Preparation](#exam-preparation)
- [Glossary](#glossary)


## Introduction

This Learner Guide accompanies the WSQ course CompTIA Certified Server+ Training (TGS-2024048318), conducted by Tertiary Infotech Academy Pte Ltd. It provides step-by-step instructions for all 33 hands-on labs, organised by the four official CompTIA Server+ SK0-005 exam domains. Every lab maps to a published exam objective and is completed on the free Killercoda Ubuntu playground using standard, free server administration tools.

Use this guide alongside the course slides and the lab files in the labs/ folder of the course repository. Where an exam objective is about physical kit (racking, PSUs, hot-swap bays, BIOS/UEFI screens), the labs use the closest software equivalents available on Linux — loopback disks for RAID, virtual NICs, KVM/QEMU virtual machines, and inspection tools such as dmidecode, ipmitool and smartctl — so every concept can be reproduced inside the disposable VM. Labs that scan, test passwords, simulate failures or destroy media must only be run against systems you own or are authorised to test; unauthorised access is an offence under the Singapore Computer Misuse Act.


## Course Learning Outcomes

- LO1: Install and manage server hardware — racking, cabling, power and cooling; deploy and manage storage (RAID, shared storage, capacity planning); and maintain hardware with out-of-band management and firmware upgrades.
- LO2: Administer server operating systems and services — OS installation, partitions and file systems, IP/DNS/DHCP/VLANs, server roles, monitoring, high availability, virtualization, scripting and asset management.
- LO3: Secure servers and plan for disaster recovery — data and physical security, identity and access management, mitigation strategies, server hardening, decommissioning, backup and recovery.
- LO4: Troubleshoot server hardware, software, storage, OS and network problems using a structured methodology, and validate disaster-recovery and failover readiness.


## Before You Start — Environment Setup

**Lab environments**

The 33 core labs run on the free Killercoda Ubuntu (Linux) playground. A few labs also ship bonus container and Kubernetes assets that run on Docker Desktop or the Killercoda Kubernetes playground:

- Linux (all core labs) — Killercoda Ubuntu playground: https://killercoda.com/playgrounds/scenario/ubuntu
- Kubernetes (bonus assets, Labs 14 & 15) — Killercoda Kubernetes playground: https://killercoda.com/playgrounds/scenario/kubernetes
- Docker (bonus assets, Labs 10 & 15) — Docker Desktop: https://www.docker.com/products/docker-desktop/

Each lab is its own folder in labs/ (e.g. labs/lab-02-raid-mdadm/) containing the guide (.md), a printable guidelines PDF, a cheatsheet PDF and a fill-in worksheet PDF, plus CSV+Excel mock data for data-bearing labs and Dockerfiles / Kubernetes YAML / shell scripts where relevant.

**What you need**

- A web browser — every core lab runs on the free Killercoda Ubuntu playground: https://killercoda.com/playgrounds/scenario/ubuntu
- No local install or physical hardware is required. Each package is pulled with apt (or a single binary download) inside the throw-away VM.
- For the bonus container labs: Docker Desktop (https://www.docker.com/products/docker-desktop/) and the Killercoda Kubernetes playground.
- Reset the playground between labs that change storage, firewall, RAID or service state, so each lab starts clean.
- Optional free online helpers: the IP Calculator (https://alfredang.github.io/ipcalculator/) for subnet planning, and the SSL Labs test for TLS posture.

**Launch and verify the playground**

Open the Killercoda Ubuntu playground in your browser. You start as root in a full Ubuntu VM. Confirm the VM is ready and refresh the package lists before you begin — then install each lab's tools with apt as the lab directs.

```bash
root@playground:~# id                 # confirm you are root
root@playground:~# uname -a           # confirm the Ubuntu VM
root@playground:~# apt update         # refresh package lists
root@playground:~# apt install -y mdadm lvm2   # example: install a lab's tools
```

**Conventions used in every lab**

- Commands are run in the Killercoda VM as root (the playground logs you in as root).
- Placeholders such as <disk>, <ip> and <host> are replaced with the values shown in each lab.
- Loopback files (/dev/loopN) stand in for physical disks; virtual NICs and KVM VMs stand in for physical kit.
- Reset the playground between labs that change storage, firewall, RAID or service state.
- Follow the lab's clean-up notes so a later lab is not affected by an earlier one.


## Topic 01 — Server Hardware Installation and Management  (18%)

Racking & power · storage & RAID · out-of-band management & firmware

**Key concepts**

- ('Form factors & racking', 'Rack (1U/2U/4U) vs. tower vs. blade; rack units, rail kits, cable management, weight distribution and airflow direction (front-to-back).')
- ('Power & cooling', 'Redundant PSUs, dual power feeds, PDUs and UPS; hot vs. cold aisle containment; environmental targets for temperature and humidity.')
- ('RAID levels', 'RAID 0/1/5/6/10 and JBOD — capacity and fault-tolerance formulas; hardware vs. software RAID; when RAID 6 or RAID 10 wins.')
- ('Shared storage', 'DAS vs. NAS vs. SAN; NFS/SMB (file) vs. iSCSI/Fibre Channel (block); LUNs, and capacity planning with growth headroom.')
- ('Out-of-band management', 'IPMI/BMC, iDRAC/iLO for lights-out control; firmware/BIOS/UEFI updates and the update order.')
- ('Hot-swap & maintenance', 'Hot-swappable drives, PSUs and fans; hot-add vs. cold maintenance; component replacement without downtime.')


### Lab 1 — Server Form Factors, Racking, and Power Planning

Exam objective: 1.1 Install physical hardware.

Goal: The learner inventories a running system with dmidecode/lshw and plans a 42U rack layout with power and cooling rules the way a data-centre technician would.

**What you'll build**

A rack layout plan plus a hardware inventory and power-budget sanity check.   (Tools: dmidecode, lshw, lscpu, lspci, lsusb.)

**Step-by-step**

1. Install the hardware inventory tools

   ```bash
   apt update && apt install -y dmidecode lshw pciutils usbutils
   ```

2. Identify the running system as a rack-mount server

   ```bash
   dmidecode -t system | grep -E "Manufacturer|Product|Serial"
   ```

3. Read chassis type and U-height

   ```bash
   dmidecode -t chassis | grep -E "Type|Height|Power"
   ```

4. Inventory CPU, RAM, bus types and expansion cards

   ```bash
   lscpu | head -20
   ```

5. List PCI/PCIe buses and cards

   ```bash
   lspci | head
   ```

6. Get the model string for a hardware compatibility list (HCL) check

   ```bash
   dmidecode -s system-product-name
   ```

7. Plan a 42U rack layout: heaviest at bottom, redundant power on separate circuits
8. Do a power-budget sanity check against the PDU and breaker (80% rule)

**Test it**

The learner verifies success by reading chassis/CPU/memory data and producing a rack layout that respects U sizing, weight balancing, cooling and redundant power.

> **Note:** Full commands and reference links are in labs/lab-01-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 2 — Storage Deployment: RAID 0/1/5/6/10 with mdadm

Exam objective: 1.2 Deploy and manage storage (RAID levels, JBOD, capacity planning).

Goal: The learner builds every RAID level the exam tests on loopback files with mdadm, then fails and rebuilds an array to observe resync.

**What you'll build**

Working RAID 0/1/5/6/10 and JBOD arrays plus a completed rebuild.   (Tools: mdadm, losetup, mkfs.ext4.)

**Step-by-step**

1. Install mdadm

   ```bash
   apt update && apt install -y mdadm
   ```

2. Create six loopback disks that behave like drives

   ```bash
   for i in 1 2 3 4 5 6; do truncate -s 200M disk$i.img; losetup /dev/loop$i disk$i.img; done
   ```

3. Build a RAID 0 stripe (N x disk, no redundancy)

   ```bash
   mdadm --create /dev/md0 --level=0 --raid-devices=2 /dev/loop1 /dev/loop2
   ```

4. Build a RAID 1 mirror (survives 1 disk failure)

   ```bash
   mdadm --create /dev/md1 --level=1 --raid-devices=2 /dev/loop1 /dev/loop2
   ```

5. Build a RAID 5 single-parity array

   ```bash
   mdadm --create /dev/md5 --level=5 --raid-devices=3 /dev/loop1 /dev/loop2 /dev/loop3
   ```

6. Build a RAID 6 double-parity array

   ```bash
   mdadm --create /dev/md6 --level=6 --raid-devices=4 /dev/loop1 /dev/loop2 /dev/loop3 /dev/loop4
   ```

7. Build a RAID 10 stripe of mirrors

   ```bash
   mdadm --create /dev/md10 --level=10 --raid-devices=4 /dev/loop1 /dev/loop2 /dev/loop3 /dev/loop4
   ```

8. Simulate a failure and rebuild, watching resync

   ```bash
   mdadm /dev/md1 --fail /dev/loop2 --remove /dev/loop2
   ```

9. Compare hardware RAID vs software RAID trade-offs

**Test it**

The learner verifies success by reading the array status in /proc/mdstat and confirming the capacity and fault-tolerance formula for each level.

> **Note:** Full commands and reference links are in labs/lab-02-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 3 — LVM Provisioning and Capacity Planning

Exam objective: 1.2/2.1/2.3 Capacity planning and logical volume management.

Goal: The learner provisions storage through the PV to VG to LV model, extends a volume online, adds swap and takes a point-in-time snapshot.

**What you'll build**

An LVM volume group with web, database and swap volumes plus a live snapshot.   (Tools: lvm2, mkfs.ext4, mkfs.xfs.)

**Step-by-step**

1. Install lvm2

   ```bash
   apt update && apt install -y lvm2
   ```

2. Create four loopback disks

   ```bash
   for i in 1 2 3 4; do truncate -s 500M disk$i.img; losetup /dev/loop$i disk$i.img; done
   ```

3. Create physical volumes and a volume group

   ```bash
   vgcreate vg_data /dev/loop1 /dev/loop2 /dev/loop3
   ```

4. Create logical volumes for web and database

   ```bash
   lvcreate -L 800M -n lv_web vg_data
   ```

5. Extend the DB volume online (add PV, grow LV, grow FS)

   ```bash
   lvextend -L +400M /dev/vg_data/lv_db
   ```

6. Grow the XFS filesystem online

   ```bash
   xfs_growfs /srv/db
   ```

7. Create a dedicated swap LV

   ```bash
   lvcreate -L 200M -n lv_swap vg_data
   ```

8. Take a point-in-time snapshot of a live volume

   ```bash
   lvcreate -L 100M -s -n lv_web_snap /dev/vg_data/lv_web
   ```

9. Report capacity vs utilisation as a baseline

   ```bash
   vgs --units g -o vg_name,vg_size,vg_free
   ```


**Test it**

The learner verifies success by confirming the extended volume grew online and the snapshot restores a deleted file.

> **Note:** Full commands and reference links are in labs/lab-03-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 4 — Shared Storage: NAS (NFS/CIFS) and SAN (iSCSI)

Exam objective: 1.2 Shared storage: NAS (NFS, CIFS), SAN (iSCSI).

Goal: The learner exports file-level NFS and CIFS shares and builds a block-level iSCSI target, then connects an initiator and formats the LUN as a disk.

**What you'll build**

A working NFS share, a Samba/CIFS share and a mounted iSCSI SAN LUN.   (Tools: nfs-kernel-server, samba, tgt, open-iscsi.)

**Step-by-step**

1. Install the NAS and SAN packages

   ```bash
   apt update && apt install -y nfs-kernel-server nfs-common tgt open-iscsi samba
   ```

2. Export an NFS share (file-level NAS)

   ```bash
   echo "/srv/nfs/share  127.0.0.1(rw,sync,no_subtree_check,no_root_squash)" >> /etc/exports
   ```

3. Mount the NFS share as a client

   ```bash
   mount -t nfs 127.0.0.1:/srv/nfs/share /mnt/nas
   ```

4. Create a CIFS/SMB share and browse it

   ```bash
   smbclient -L //127.0.0.1 -N
   ```

5. Build an iSCSI target with a 500 MB LUN

   ```bash
   systemctl restart tgt
   ```

6. Discover and log in to the iSCSI target

   ```bash
   iscsiadm -m discovery -t st -p 127.0.0.1
   ```

7. Log in to the iSCSI node

   ```bash
   iscsiadm -m node --login
   ```

8. Format and mount the new SAN LUN as a local disk

   ```bash
   mkfs.ext4 /dev/$NEW
   ```

9. Compare NAS vs SAN vs Fibre Channel/FCoE

**Test it**

The learner verifies success by reading files over the NFS/CIFS mounts and confirming a new /dev/sdX LUN appears from the iSCSI target and mounts.

> **Note:** Full commands and reference links are in labs/lab-04-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 5 — Out-of-Band Management, BIOS/UEFI, and Firmware

Exam objective: 1.3 Perform server hardware maintenance (OOB, BIOS/UEFI, firmware, hot-swap).

Goal: The learner inspects BIOS/UEFI from the OS, practises the efibootmgr and ipmitool workflows, and walks the fwupd firmware-upgrade and hot-swap checklists.

**What you'll build**

A firmware/BIOS inventory and a documented OOB management and hot-swap workflow.   (Tools: ipmitool, fwupd, efibootmgr, dmidecode.)

**Step-by-step**

1. Install the OOB and firmware tools

   ```bash
   apt update && apt install -y ipmitool fwupd efibootmgr dmidecode
   ```

2. Inventory BIOS/UEFI from the running OS

   ```bash
   dmidecode -t bios
   ```

3. Confirm UEFI vs legacy BIOS boot mode

   ```bash
   [ -d /sys/firmware/efi ] && echo "Booted in UEFI mode" || echo "Booted in legacy BIOS mode"
   ```

4. List UEFI boot entries

   ```bash
   efibootmgr -v
   ```

5. Practise the IPMI/BMC chassis-status pattern

   ```bash
   ipmitool -H bmc.example.com -U admin -P 'CHANGEME' chassis status
   ```

6. List which firmware is installed with fwupd

   ```bash
   fwupdmgr get-devices
   ```

7. Check for available firmware updates

   ```bash
   fwupdmgr get-updates
   ```

8. Walk the four local-admin paths (crash cart, KVM, serial, virtual console)
9. Walk the hot-swap pre-swap checklist for drives, PSUs and fans

**Test it**

The learner verifies success by reading the BIOS version and boot mode and mapping each ipmitool command to its Server+ OOB sub-objective.

> **Note:** Full commands and reference links are in labs/lab-05-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


## Topic 02 — Server Administration  (30%)

OS install & file systems · networking · roles, HA, virtualization, scripting & assets

**Key concepts**

- ('OS installation', 'Attended, unattended, scripted and image-based installs; partition schemes (MBR vs. GPT); file systems (ext4, XFS, ZFS, NTFS).')
- ('Network services', 'IPv4/IPv6 addressing and subnetting, DNS, DHCP, FQDN, VLANs and default gateways for a server.')
- ('Server roles & monitoring', 'Web, file, database, directory and print roles; performance baselining, metrics and thresholds; data migration.')
- ('High availability', 'Clustering, load balancing, NIC teaming and failover to remove single points of failure.')
- ('Virtualization & cloud', 'Host vs. guest, hypervisor types, resource allocation and over-commit; IaaS/PaaS/SaaS and public/private/hybrid models.')
- ('Scripting & asset management', 'Variables, loops and conditionals for common server tasks; documentation, lifecycle and secure asset storage.')


### Lab 6 — Installing a Server OS (Unattended / Scripted)

Exam objective: 2.1 Install server operating systems.

Goal: The learner validates minimum specs and the HCL, builds a cloud-init autoinstall seed.iso, captures a golden image and walks the P2V conversion workflow.

**What you'll build**

A cloud-init autoinstall seed.iso and a golden-image tarball for template deployment.   (Tools: debootstrap, cloud-init, genisoimage, qemu-utils.)

**Step-by-step**

1. Install the OS-deployment tools

   ```bash
   apt update && apt install -y debootstrap cloud-init genisoimage qemu-utils
   ```

2. Confirm minimum OS requirements (CPU, RAM, disk)

   ```bash
   lscpu | grep -E "Architecture|CPU\(s\)"
   ```

3. Do an HCL check on CPU, NIC and storage controller

   ```bash
   echo "NIC: $(lspci | grep -i ether)"
   ```

4. Build a minimal cloud-init autoinstall config
5. Package the config into a NoCloud seed ISO

   ```bash
   genisoimage -output seed.iso -volid cidata -joliet -rock user-data meta-data
   ```

6. Capture a golden image of the root filesystem

   ```bash
   tar --one-file-system --exclude=/proc --exclude=/sys --exclude=/dev --exclude=/mnt -czf /srv/golden.tgz / 2>/dev/null
   ```

7. Build a template root filesystem with debootstrap

   ```bash
   debootstrap --variant=minbase jammy /srv/template http://archive.ubuntu.com/ubuntu/
   ```

8. Create a destination image shape for P2V conversion

   ```bash
   qemu-img create -f qcow2 /srv/converted.qcow2 5G
   ```

9. Compare GUI vs Core vs Bare metal vs Virtualized vs Remote installs

**Test it**

The learner verifies success by confirming the seed.iso is built and the golden-image tarball and debootstrap template are deployable filesystems.

> **Note:** Full commands and reference links are in labs/lab-06-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 7 — Partition and Volume Types, File Systems

Exam objective: 2.1 Partition/volume types (GPT vs MBR, LVM) and file systems.

Goal: The learner partitions a disk with MBR then GPT, formats ext4/XFS/ZFS, persists mounts by UUID and converts MBR to GPT non-destructively.

**What you'll build**

A GPT-partitioned disk with ext4, XFS and ZFS filesystems and a UUID-based fstab entry.   (Tools: parted, gdisk, e2fsprogs, xfsprogs, zfsutils-linux.)

**Step-by-step**

1. Install the partitioning and filesystem tools

   ```bash
   apt update && apt install -y parted gdisk e2fsprogs xfsprogs zfsutils-linux ntfs-3g
   ```

2. Create a 4G loopback disk to partition

   ```bash
   losetup -P /dev/loop10 /srv/disk.img
   ```

3. Create an MBR (msdos) partition table

   ```bash
   parted -s /dev/loop10 mklabel msdos
   ```

4. Switch the disk to a GPT partition table

   ```bash
   parted -s /dev/loop10 mklabel gpt
   ```

5. Format the ext4 partition

   ```bash
   mkfs.ext4 /dev/loop10p1
   ```

6. Create a ZFS pool on a partition

   ```bash
   zpool create -f tank /dev/loop10p3
   ```

7. Compare the five Server+ filesystems (ext4, NTFS, VMFS, ReFS, ZFS)
8. Persist a mount by UUID in /etc/fstab

   ```bash
   echo "UUID=$UUID  /mnt/p1  ext4  defaults,noatime  0 2" | tee -a /etc/fstab
   ```

9. Convert MBR to GPT non-destructively with gdisk

   ```bash
   gdisk -l /dev/loop10 | head
   ```


**Test it**

The learner verifies success by printing the partition table with parted/gdisk and confirming the UUID-based fstab mount survives mount -a.

> **Note:** Full commands and reference links are in labs/lab-07-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 8 — IP, VLAN, DNS, DHCP, FQDN, and Hosts File

Exam objective: 2.2 Configure servers to use network infrastructure services.

Goal: The learner configures a static IP and gateway, tags a VLAN, builds a BIND9 zone with A records and a DHCP scope, and simulates APIPA.

**What you'll build**

A configured static IP with VLAN, a BIND9 zone serving an FQDN and a validated DHCP scope.   (Tools: iproute2, bind9, dnsutils, isc-dhcp-server.)

**Step-by-step**

1. Install the networking service packages

   ```bash
   apt update && apt install -y iproute2 vlan bind9 bind9utils dnsutils isc-dhcp-server
   ```

2. Inspect IP configuration, routes and MAC addresses

   ```bash
   ip -c addr
   ```

3. Configure a static IP and default gateway

   ```bash
   ip addr add 10.99.99.10/24 dev eth0
   ```

4. Tag VLAN 20 on a single NIC with 802.1Q

   ```bash
   ip link add link eth0 name eth0.20 type vlan id 20
   ```

5. Review RFC 1918 private ranges and APIPA
6. Build a BIND9 zone with A records and restart

   ```bash
   systemctl restart bind9
   ```

7. Resolve the FQDN against the local server

   ```bash
   dig @127.0.0.1 web.lab.local +short
   ```

8. Add a hosts-file override that beats DNS

   ```bash
   echo "10.99.99.50  app.lab.local app" >> /etc/hosts
   ```

9. Validate an ISC DHCP scope config

   ```bash
   dhcpd -t -cf /etc/dhcp/dhcpd.conf && echo "Config OK"
   ```


**Test it**

The learner verifies success by resolving web.lab.local through BIND9 and confirming the DHCP config passes validation.

> **Note:** Full commands and reference links are in labs/lab-08-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 9 — Server Firewall and Port Management

Exam objective: 2.2 Firewall, Ports.

Goal: The learner memorises the well-known ports, applies a default-deny UFW policy, translates it to raw nftables and audits listening vs reachable vs permitted.

**What you'll build**

A default-deny firewall permitting only SSH/HTTP/HTTPS with source-restricted rules.   (Tools: ufw, nftables, nginx, nmap.)

**Step-by-step**

1. Install the firewall and scan tools

   ```bash
   apt update && apt install -y ufw nftables nginx nmap
   ```

2. Review the well-known server port table
3. Start a service and observe its open port

   ```bash
   ss -tlnp | grep nginx
   ```

4. Apply a default-deny UFW policy with explicit allows

   ```bash
   ufw default deny incoming
   ```

5. Allow SSH, HTTP and HTTPS

   ```bash
   ufw allow 22/tcp comment 'SSH admin'
   ```

6. Confirm the policy with nmap

   ```bash
   nmap -p 22,23,25,80,443,3306 127.0.0.1
   ```

7. Write the equivalent rule in raw nftables

   ```bash
   nft add rule inet filter input tcp dport 8080 accept
   ```

8. Add a source-restricted rule for MySQL

   ```bash
   ufw allow from 10.99.99.0/24 to any port 3306 proto tcp comment 'MySQL app tier'
   ```

9. Run the 3-view audit: listening, reachable, permitted

   ```bash
   ss -tulnp
   ```


**Test it**

The learner verifies success by confirming nmap sees only the allowed ports open and the ss, nmap and ufw views agree.

> **Note:** Full commands and reference links are in labs/lab-09-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 10 — Server Roles: Web, File, and Database

Exam objective: 2.3 Server roles requirements (Web, File, Database).

Goal: The learner stands up nginx, Samba and MariaDB end-to-end on one host, applies resource limits and documents a role inventory.

**What you'll build**

A single host serving web, file and database roles with per-role resource limits.   (Tools: nginx, samba, mariadb-server, curl.)

**Step-by-step**

1. Install the three role packages

   ```bash
   apt update && apt install -y nginx samba mariadb-server curl cifs-utils
   ```

2. Start nginx and serve a page (web role)

   ```bash
   curl -s http://127.0.0.1/ | head
   ```

3. Add a name-based virtual host

   ```bash
   ln -sf /etc/nginx/sites-available/site1 /etc/nginx/sites-enabled/
   ```

4. Create a Samba user and share (file role)

   ```bash
   (echo 'P@ssw0rd!'; echo 'P@ssw0rd!') | smbpasswd -s -a alice
   ```

5. Connect to the Samba share

   ```bash
   smbclient //127.0.0.1/share -U alice%P@ssw0rd! -c 'ls'
   ```

6. Create a MariaDB database and least-privilege user (database role)

   ```bash
   mysql -e "CREATE DATABASE appdb;"
   ```

7. Apply systemd resource limits so roles don't starve each other

   ```bash
   systemctl set-property mariadb.service MemoryMax=512M CPUQuota=80%
   ```

8. Document the role inventory to a file

**Test it**

The learner verifies success by getting a page from nginx, listing the Samba share and running a SELECT against MariaDB.

> **Note:** Full commands and reference links are in labs/lab-10-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 11 — Directory Services with OpenLDAP

Exam objective: 2.3/3.3 Directory connectivity, scope-based delegation.

Goal: The learner installs OpenLDAP, builds an OU/user/group tree, binds as a user and adds a group-based delegation ACL.

**What you'll build**

An OpenLDAP directory with an OU structure, users, groups and a delegation ACL.   (Tools: slapd, ldap-utils, ldapscripts.)

**Step-by-step**

1. Install and preseed slapd non-interactively

   ```bash
   DEBIAN_FRONTEND=noninteractive apt install -y slapd ldap-utils ldapscripts
   ```

2. Verify the directory is running

   ```bash
   ldapsearch -x -H ldap://127.0.0.1 -b "dc=lab,dc=local" -s base "(objectclass=*)" namingContexts
   ```

3. Create the people and groups OUs

   ```bash
   ldapadd -x -D "cn=admin,dc=lab,dc=local" -w LabAdmin1! -f /tmp/ou.ldif
   ```

4. Add user accounts

   ```bash
   ldapadd -x -D "cn=admin,dc=lab,dc=local" -w LabAdmin1! -f /tmp/users.ldif
   ```

5. Set a user password

   ```bash
   ldappasswd -x -D "cn=admin,dc=lab,dc=local" -w LabAdmin1! -s 'AlicePass!' "uid=alice,ou=people,dc=lab,dc=local"
   ```

6. Create groups and assign membership

   ```bash
   ldapadd -x -D "cn=admin,dc=lab,dc=local" -w LabAdmin1! -f /tmp/groups.ldif
   ```

7. Bind as a user and confirm identity

   ```bash
   ldapwhoami -x -D "uid=alice,ou=people,dc=lab,dc=local" -w 'AlicePass!'
   ```

8. Add a group-based delegation ACL

   ```bash
   ldapmodify -Y EXTERNAL -H ldapi:/// -f /tmp/acl.ldif
   ```

9. Map the concepts to Active Directory (OU=scope, group=role, ACL=delegation)

**Test it**

The learner verifies success by binding as alice and searching entries under ou=people.

> **Note:** Full commands and reference links are in labs/lab-11-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 12 — Performance Monitoring, Baselining, Event Logs

Exam objective: 2.3 Monitoring, baselining, event logs, thresholds, alerting.

Goal: The learner captures CPU/memory/disk/network baselines, inspects and rotates event logs, and wires threshold alerting with Prometheus node_exporter.

**What you'll build**

A saved performance baseline file and a node_exporter metrics endpoint for alerting.   (Tools: sysstat, htop, iotop, fio, prometheus-node-exporter.)

**Step-by-step**

1. Install the monitoring tools and enable sysstat

   ```bash
   apt update && apt install -y sysstat htop iotop fio prometheus-node-exporter
   ```

2. Read uptime and load averages

   ```bash
   uptime
   ```

3. Capture a CPU baseline

   ```bash
   mpstat 1 5
   ```

4. Capture a memory baseline

   ```bash
   sar -r 1 5
   ```

5. Generate I/O load and measure IOPS and latency

   ```bash
   iostat -xz 1 5
   ```

6. Save a combined baseline file for later diffing
7. Inspect event logs and configure rotation/retention

   ```bash
   journalctl --since "1 hour ago" -p err
   ```

8. Expose metrics with node_exporter for thresholds/alerting

   ```bash
   curl -s http://127.0.0.1:9100/metrics | grep -E 'node_cpu_seconds_total|node_memory_MemAvailable|node_filesystem_free' | head
   ```


**Test it**

The learner verifies success by producing a baseline file and confirming node_exporter serves the CPU, memory and filesystem metrics.

> **Note:** Full commands and reference links are in labs/lab-12-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 13 — Data Migration and Transfer

Exam objective: 2.3 Data migration and transfer (rsync, SCP, Robocopy).

Goal: The learner transfers data with rsync, SCP and SFTP, applies fast-copy techniques and reviews exfiltration controls including bandwidth caps.

**What you'll build**

A mirrored dataset transferred with rsync/SCP/SFTP plus egress controls.   (Tools: rsync, openssh-client, lftp, pv.)

**Step-by-step**

1. Install the transfer tools and start ssh

   ```bash
   apt update && apt install -y rsync openssh-client openssh-server lftp pv
   ```

2. Set up source and destination trees

   ```bash
   for i in $(seq 1 50); do dd if=/dev/urandom of=/srv/src/file$i.bin bs=1K count=$((RANDOM%200+10)) 2>/dev/null; done
   ```

3. Mirror with rsync (archive, delta, delete)

   ```bash
   rsync -avh /srv/src/ /srv/dst/
   ```

4. Rsync over SSH to a remote host

   ```bash
   rsync -avzh -e ssh /srv/src/  user@remote:/srv/dst/
   ```

5. Copy with SCP (simple, no resume)

   ```bash
   scp -r /srv/src/ root@127.0.0.1:/srv/dst-scp/
   ```

6. Transfer interactively over SFTP

   ```bash
   sftp root@127.0.0.1
   ```

7. Compare cross-OS choices including Windows Robocopy
8. Fast-copy a large file showing throughput

   ```bash
   pv /srv/src/file1.bin > /srv/dst/file1.bin
   ```

9. Apply a bandwidth cap to limit exfiltration

   ```bash
   rsync -avh --bwlimit=1024 /srv/src/ user@remote:/srv/dst/
   ```


**Test it**

The learner verifies success by confirming the destination mirrors the source and understands when to use SCP vs SFTP vs rsync.

> **Note:** Full commands and reference links are in labs/lab-13-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 14 — High Availability: Clustering, Load Balancing, NIC Teaming

Exam objective: 2.4 Clustering, fault tolerance, load balancing, NIC teaming.

Goal: The learner builds an HAProxy round-robin load balancer over two backends, observes failover and failback, and configures keepalived VRRP and NIC bonding.

**What you'll build**

An HAProxy load balancer with health checks plus keepalived and NIC-bond configs.   (Tools: haproxy, keepalived, nginx, ifenslave.)

**Step-by-step**

1. Install the HA packages

   ```bash
   apt update && apt install -y haproxy keepalived nginx ifenslave apache2-utils
   ```

2. Start two backend web servers on different ports

   ```bash
   nohup python3 -m http.server 8001 --directory /srv/back1 >/tmp/b1.log 2>&1 &
   ```

3. Configure HAProxy round-robin with health checks

   ```bash
   systemctl restart haproxy
   ```

4. Test round-robin distribution across backends

   ```bash
   for i in 1 2 3 4; do curl -s 127.0.0.1:8080; done
   ```

5. Switch the algorithm to least-conn

   ```bash
   sed -i 's/balance roundrobin/balance leastconn/' /etc/haproxy/haproxy.cfg
   ```

6. Kill a backend to observe failover

   ```bash
   kill $(lsof -ti :8001) || pkill -f '8001'
   ```

7. Configure keepalived VRRP heartbeat for a floating VIP
8. Configure NIC bonding (active-backup vs 802.3ad LACP)

   ```bash
   modprobe bonding mode=active-backup miimon=100
   ```

9. Review the cluster-aware patching procedure

**Test it**

The learner verifies success by seeing traffic alternate across backends and only the surviving backend answer after a failover.

> **Note:** Full commands and reference links are in labs/lab-14-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 15 — Virtualization with KVM / QEMU

Exam objective: 2.5 Purpose and operation of virtualization.

Goal: The learner creates a thin-provisioned qcow2 disk, defines a VM with virt-install, inspects virtual networking and adds a second virtual switch.

**What you'll build**

A defined KVM VM with a qcow2 disk and a second isolated virtual switch.   (Tools: qemu-kvm, libvirt-daemon-system, virtinst, bridge-utils.)

**Step-by-step**

1. Install the virtualization stack and start libvirtd

   ```bash
   apt update && apt install -y qemu-system-x86 qemu-utils libvirt-daemon-system virtinst bridge-utils
   ```

2. Check whether the host CPU supports hardware virt

   ```bash
   egrep -c '(vmx|svm)' /proc/cpuinfo
   ```

3. Create a thin-provisioned qcow2 virtual disk

   ```bash
   qemu-img create -f qcow2 /var/lib/libvirt/images/vm1.qcow2 5G
   ```

4. Define a VM mapping each flag to objective 2.5

   ```bash
   virsh list --all
   ```

5. Inspect the default virtual network and virbr0

   ```bash
   virsh net-dumpxml default
   ```

6. Compare bridged vs NAT vs isolated networking
7. Add and start a second virtual switch

   ```bash
   virsh net-start internal
   ```

8. Review CPU/memory/disk/NIC overprovisioning rules

   ```bash
   nproc
   ```

9. Compare public, private and hybrid cloud models

**Test it**

The learner verifies success by confirming the qcow2 disk is thin-provisioned and the second virtual network starts and appears in virsh net-list.

> **Note:** Full commands and reference links are in labs/lab-15-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 16 — Scripting Basics for Server Administration

Exam objective: 2.6 Scripting (types, variables, loops, conditionals, admin tasks).

Goal: The learner writes Bash scripts covering variables, data types, conditionals, loops and real admin tasks like service management and bulk account creation.

**What you'll build**

A set of Bash scripts for service checks, bulk account creation and host bootstrap.   (Tools: bash, coreutils, systemctl.)

**Step-by-step**

1. Review the four script types and their platforms
2. Write a script using variables, comments and environment exports

   ```bash
   chmod +x 01-basics.sh && ./01-basics.sh
   ```

3. Use integers, strings and arrays

   ```bash
   chmod +x 02-types.sh && ./02-types.sh
   ```

4. Write a disk-usage conditional with comparators

   ```bash
   chmod +x 03-conditionals.sh && ./03-conditionals.sh
   ```

5. Write for and while loops

   ```bash
   chmod +x 04-loops.sh && ./04-loops.sh
   ```

6. Write a service-management task script

   ```bash
   chmod +x 05-services.sh && ./05-services.sh
   ```

7. Write a bulk account-creation task script

   ```bash
   chmod +x 06-accounts.sh && ./06-accounts.sh
   ```

8. Write a bootstrap script with set -euo pipefail discipline

**Test it**

The learner verifies success by running each script and confirming the service, account and bootstrap tasks produce the expected output.

> **Note:** Full commands and reference links are in labs/lab-16-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 17 — Asset Management, Documentation, and Licensing

Exam objective: 2.7/2.8 Asset management, documentation, licensing concepts.

Goal: The learner scripts asset discovery, captures an as-built config set, reviews BIA-driven metrics and the licensing model table, and validates a license count.

**What you'll build**

A discovered asset CSV, an as-built config snapshot and a license-count report.   (Tools: dmidecode, coreutils, spreadsheet.)

**Step-by-step**

1. Auto-discover the asset details into a CSV
2. Review the asset life-cycle stages
3. Capture the running config as an as-built doc set

   ```bash
   systemctl list-units --type=service --state=running > services.txt
   ```

4. Review BIA-driven metrics (MTBF, MTTR, RPO, RTO, SLA, uptime)
5. Draft a change-management entry template
6. Restrict permissions on sensitive documentation

   ```bash
   chmod 750 /root/asbuilt
   ```

7. Review the Server+ licensing model cheat sheet
8. Run a license-count validation script for true-up

   ```bash
   chmod +x /root/license-count.sh && /root/license-count.sh
   ```


**Test it**

The learner verifies success by producing the asset CSV, the as-built config files and a socket/core/vCPU count for a true-up.

> **Note:** Full commands and reference links are in labs/lab-17-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


## Topic 03 — Security and Disaster Recovery  (24%)

Data & physical security · IAM · mitigation & hardening · decommissioning · backup & DR

**Key concepts**

- ('Data security', 'Encryption at rest (LUKS/BitLocker) and in transit (TLS/SSH); retention policies and the data lifecycle.')
- ('Physical security', 'Access controls, mantraps, badge/biometric systems, cameras and environmental controls for the server room.')
- ('Identity & access management', 'User accounts, groups, RBAC, least privilege, MFA and permission management.')
- ('Mitigation & hardening', 'Malware prevention, DLP, SIEM; OS updates, disabling unused services and host-based hardening.')
- ('Decommissioning', 'NIST 800-88 media sanitization — clear, purge, destroy; recycling and asset disposal records.')
- ('Backup & disaster recovery', 'Full/incremental/differential backups, the 3-2-1 rule, snapshots, replication and site failover; RPO and RTO.')


### Lab 18 — Data at Rest (LUKS) and Data in Transit (TLS/SSH)

Exam objective: 3.1 Data security concepts (encryption at rest and in transit).

Goal: The learner encrypts a volume with LUKS, proves the ciphertext is unreadable, serves TLS with a self-signed cert and hardens SSH.

**What you'll build**

A LUKS-encrypted volume and a TLS-enabled nginx site with hardened SSH.   (Tools: cryptsetup, openssl, openssh-server.)

**Step-by-step**

1. Install the encryption tools

   ```bash
   apt update && apt install -y cryptsetup openssl openssh-server
   ```

2. Format a volume at rest with LUKS

   ```bash
   cryptsetup luksFormat /dev/loop20 --batch-mode --key-file=<(echo -n 'LabPass!1')
   ```

3. Open, format and mount the encrypted volume

   ```bash
   cryptsetup luksOpen /dev/loop20 secret --key-file=<(echo -n 'LabPass!1')
   ```

4. Close it and prove the raw bytes are unreadable

   ```bash
   strings /srv/secret.img | grep financials || echo "no plaintext visible — at-rest encryption works"
   ```

5. Inspect the cipher and LUKS header

   ```bash
   cryptsetup luksDump /dev/loop20 | head -30
   ```

6. Generate a self-signed TLS cert and serve HTTPS

   ```bash
   openssl req -x509 -newkey rsa:2048 -nodes -keyout /etc/ssl/private/lab.key -out /etc/ssl/certs/lab.crt -subj "/CN=lab.local" -days 365
   ```

7. Verify the negotiated TLS protocol and cipher

   ```bash
   echo | openssl s_client -connect 127.0.0.1:443 -servername lab.local 2>/dev/null | grep -E "Protocol|Cipher\s+:"
   ```

8. Review SSH hardening lines and BIOS/GRUB passwords
9. Map a retention policy to data classification

**Test it**

The learner verifies success by confirming no plaintext is recoverable from the closed LUKS image and TLS 1.2/1.3 is negotiated.

> **Note:** Full commands and reference links are in labs/lab-18-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 19 — Physical and Environmental Security Walk-Through

Exam objective: 3.2 Physical security concepts.

Goal: The learner inspects environmental sensors the OS can see and walks the physical access-control layers, lock types, environmental controls and a security checklist.

**What you'll build**

A completed physical-security audit checklist for a server room.   (Tools: lm-sensors, smartmontools.)

**Step-by-step**

1. Install the sensor tools

   ```bash
   apt update && apt install -y lm-sensors smartmontools
   ```

2. Review the physical access-control layers (defence in depth)
3. Review lock and authenticator types (RFID, biometric)
4. Inspect environmental sensors the OS exposes

   ```bash
   sensors 2>/dev/null | head -30
   ```

5. Read drive temperature via SMART

   ```bash
   smartctl -a /dev/sda 2>/dev/null | grep -i temperature | head -3
   ```

6. Review cameras and guards as detective controls
7. Map the concentric data-centre security zones
8. Review the mantrap defence against tailgating
9. Complete the physical-security audit checklist

**Test it**

The learner verifies success by reading available environmental sensor data and completing the physical-security checklist.

> **Note:** Full commands and reference links are in labs/lab-19-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 20 — Identity & Access Management for Server Administration

Exam objective: 3.3 Identity and access management.

Goal: The learner builds RBAC groups with segregation of duties, delegates via sudoers, enforces password policy and lockout, and audits access.

**What you'll build**

Three RBAC roles with scoped sudoers rules, password policy and audit checks.   (Tools: sudo, libpam-pwquality, chage, setfacl.)

**Step-by-step**

1. Install the IAM tools

   ```bash
   apt update && apt install -y sudo libpam-pwquality
   ```

2. Create three role groups and users (segregation of duties)

   ```bash
   useradd -m -G sysops alice && echo 'alice:AlicePass!1' | chpasswd
   ```

3. Delegate scoped commands per role via sudoers

   ```bash
   visudo -c
   ```

4. Test that each role can only run its own commands

   ```bash
   sudo -u bob   -i bash -c 'sudo systemctl restart mariadb && echo bob-ok'
   ```

5. Enforce password length and complexity policy
6. Enforce account lockout with pam_faillock
7. Enforce password aging

   ```bash
   chage -M 90 -m 1 -W 7 alice
   ```

8. Layer file ACLs on top of group bits

   ```bash
   setfacl -m g:netops:r-x /srv/dbdata
   ```

9. Audit logins, group membership and account changes

   ```bash
   getent group sysops dbops netops
   ```


**Test it**

The learner verifies success by confirming a user is denied a command outside its role and password/lockout policy is enforced.

> **Note:** Full commands and reference links are in labs/lab-20-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 21 — Multi-Factor Authentication with TOTP (PAM)

Exam objective: 3.3 Multifactor authentication.

Goal: The learner adds a TOTP second factor to SSH with PAM, provisions a user's secret, generates codes from the CLI and tests the two-factor login.

**What you'll build**

An SSH login enforcing a password plus a TOTP second factor.   (Tools: libpam-google-authenticator, qrencode, oathtool.)

**Step-by-step**

1. Install the MFA tools and start ssh

   ```bash
   apt update && apt install -y libpam-google-authenticator qrencode oathtool openssh-server
   ```

2. Create a non-privileged user

   ```bash
   useradd -m -s /bin/bash mfauser
   ```

3. Provision the TOTP secret for that user

   ```bash
   sudo -u mfauser google-authenticator -t -d -f -r 3 -R 30 -w 17 -Q UTF8
   ```

4. Wire PAM and sshd to require TOTP

   ```bash
   echo 'auth required pam_google_authenticator.so nullok' > /etc/pam.d/sshd.mfa
   ```

5. Enable challenge-response and restart ssh

   ```bash
   systemctl restart ssh
   ```

6. Generate the current TOTP from the CLI for testing

   ```bash
   oathtool --totp -b "$SECRET"
   ```

7. Test the two-factor login

   ```bash
   ssh -o PreferredAuthentications=keyboard-interactive,password -o PubkeyAuthentication=no mfauser@127.0.0.1
   ```

8. Review scratch codes for account recovery

   ```bash
   sudo tail -5 /home/mfauser/.google_authenticator
   ```

9. Review the factor-category test for true MFA

**Test it**

The learner verifies success by confirming login is denied with a wrong TOTP code even when the password is correct.

> **Note:** Full commands and reference links are in labs/lab-21-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 22 — Auditing, Logging, and SIEM Basics

Exam objective: 3.4 Data security risks and mitigation (log analysis, SIEM).

Goal: The learner writes auditd rules for the four audit targets, configures rsyslog forwarding and rotation, runs logwatch and simulates a SIEM correlation rule.

**What you'll build**

Auditd file-watch rules, log rotation policy and a simulated correlation alert.   (Tools: auditd, rsyslog, logwatch.)

**Step-by-step**

1. Install and enable auditd and rsyslog

   ```bash
   apt update && apt install -y auditd audispd-plugins rsyslog logwatch
   ```

2. Write auditd rules for user/group/login/deletion events

   ```bash
   augenrules --load
   ```

3. Trigger and search an audit event

   ```bash
   ausearch -k id_changes -ts recent | tail -20
   ```

4. Review rsyslog severity levels and forwarding

   ```bash
   logger -p auth.notice "Server+ lab test: notice-level entry"
   ```

5. Configure log rotation and retention

   ```bash
   logrotate -d /etc/logrotate.d/srvplus 2>&1 | tail
   ```

6. Generate a daily report with logwatch

   ```bash
   logwatch --output stdout --range today --detail Med | head -60
   ```

7. Simulate a SIEM correlation rule with awk

   ```bash
   awk '/sshd.*Failed/ {fails[$NF]++} /sshd.*Accepted/ {if (fails[$NF]>=5) print "ALERT: brute then success from", $NF}' /var/log/auth.log
   ```

8. Review two-person integrity and separation of roles

**Test it**

The learner verifies success by finding the triggered auditd event and confirming the correlation rule and rotation config work.

> **Note:** Full commands and reference links are in labs/lab-22-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 23 — OS and Application Hardening

Exam objective: 3.5 Apply server hardening methods.

Goal: The learner baselines with Lynis, minimises services/ports/packages, hardens nginx, deploys AIDE and AppArmor, and re-scans to watch the hardening index climb.

**What you'll build**

A hardened host with a rising Lynis index, AIDE baseline and AppArmor enforcement.   (Tools: lynis, apparmor-utils, aide, chkrootkit.)

**Step-by-step**

1. Install the hardening tools

   ```bash
   apt update && apt install -y lynis apparmor-utils debsums aide chkrootkit unattended-upgrades
   ```

2. Baseline the host with Lynis and note the hardening index

   ```bash
   lynis audit system --quick 2>&1 | tail -60
   ```

3. Disable unused services

   ```bash
   systemctl disable --now "$s"
   ```

4. Close unneeded ports with the firewall

   ```bash
   ufw default deny incoming
   ```

5. Remove unneeded packages (minimisation)

   ```bash
   apt purge -y telnet ftp rsh-client 2>/dev/null
   ```

6. Harden the nginx web role

   ```bash
   nginx -t 2>/dev/null && systemctl reload nginx 2>/dev/null
   ```

7. Build an AIDE file-integrity baseline and check

   ```bash
   aideinit -y -f 2>&1 | tail
   ```

8. Enforce an AppArmor profile (MAC)

   ```bash
   aa-enforce /etc/apparmor.d/usr.sbin.nginx 2>/dev/null
   ```

9. Re-scan with Lynis and compare the score

   ```bash
   lynis audit system --quick 2>&1 | grep -E "Hardening index|warning|suggestion" | tail -20
   ```


**Test it**

The learner verifies success by confirming the Lynis hardening index improves after the minimisation and hardening steps.

> **Note:** Full commands and reference links are in labs/lab-23-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 24 — Patch and Update Management

Exam objective: 3.5/2.4 Patching (testing, deployment, change management).

Goal: The learner distinguishes security from feature updates, snapshots and smoke-tests, applies patches with change discipline, and configures security-only auto-apply with a rollback plan.

**What you'll build**

A security-only unattended-upgrades config plus a patch report and rollback pin.   (Tools: unattended-upgrades, needrestart, debsecan.)

**Step-by-step**

1. Install the patching tools

   ```bash
   apt update && apt install -y unattended-upgrades needrestart apt-listchanges debsecan
   ```

2. Inventory current package versions as a baseline

   ```bash
   apt list --upgradable 2>/dev/null | head -20
   ```

3. Identify security-only updates

   ```bash
   apt-get -s dist-upgrade | grep -i security | head
   ```

4. Apply patches with change-management discipline

   ```bash
   DEBIAN_FRONTEND=noninteractive apt -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
   ```

5. Check which services need restarting after upgrade

   ```bash
   needrestart -b
   ```

6. Check whether a reboot is required

   ```bash
   [ -f /var/run/reboot-required ] && cat /var/run/reboot-required
   ```

7. Configure unattended-upgrades for security-only auto-apply

   ```bash
   unattended-upgrade --dry-run -d 2>&1 | tail
   ```

8. Plan a rollback via package pinning

   ```bash
   apt-mark hold nginx
   ```

9. Write a patch report for the change ticket

**Test it**

The learner verifies success by confirming the security-only auto-apply config validates and a rollback pin holds the package version.

> **Note:** Full commands and reference links are in labs/lab-24-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 25 — Secure Decommissioning and Media Destruction

Exam objective: 3.6 Server decommissioning concepts.

Goal: The learner works the decommission checklist, wipes a loopback image with shred and nwipe, and reviews SSD erase, physical destruction and recycling.

**What you'll build**

A securely wiped media image with a documented decommission and destruction trail.   (Tools: shred, wipe, nwipe, dd.)

**Step-by-step**

1. Install the wipe tools

   ```bash
   apt update && apt install -y wipe nwipe secure-delete
   ```

2. Review the decommission workflow checklist
3. Create a drive image with sensitive content

   ```bash
   strings /srv/oldserver.img | grep -E "pii|cred" | head
   ```

4. Logically wipe with shred (single pass)

   ```bash
   shred -v -n 1 -z /srv/oldserver.img
   ```

5. Confirm no plaintext is recoverable

   ```bash
   strings /srv/oldserver.img | grep -E "pii|cred" | head || echo "no plaintext recoverable"
   ```

6. Multi-pass wipe with nwipe (DoD method)

   ```bash
   nwipe --autonuke --nowait --method=dod /srv/oldserver.img 2>&1 | tail -10
   ```

7. Review SSD-specific ATA Secure Erase and crypto-erase
8. Review physical destruction methods (degauss, shred, crush, incinerate)
9. Review cable remediation and internal vs external recycling

**Test it**

The learner verifies success by confirming the sensitive strings are unrecoverable after the wipe.

> **Note:** Full commands and reference links are in labs/lab-25-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 26 — Backup Strategy: Full, Incremental, Differential, Snapshot

Exam objective: 3.7 Backups and restores.

Goal: The learner runs full, incremental and differential backups with tar, a deduplicated synthetic full with restic, and validates a restore against the source.

**What you'll build**

A validated backup set spanning full, incremental, differential and restic snapshots.   (Tools: tar, rsync, restic, lvm2.)

**Step-by-step**

1. Install the backup tools

   ```bash
   apt update && apt install -y rsync restic lvm2
   ```

2. Prepare a live dataset and backup target

   ```bash
   for i in $(seq 1 10); do dd if=/dev/urandom of=/srv/data/file$i.bin bs=1K count=$((RANDOM%50+5)) 2>/dev/null; done
   ```

3. Take a full backup with tar

   ```bash
   tar -czf /srv/backup/full-$(date +%F).tgz -C /srv data
   ```

4. Take an incremental backup with a snapshot file

   ```bash
   tar --listed-incremental=/srv/backup/snap.snar -czf /srv/backup/inc-$(date +%F).tgz -C /srv data
   ```

5. Take a differential backup

   ```bash
   tar --listed-incremental=/srv/backup/snap-full.snar -czf /srv/backup/diff-$(date +%F).tgz -C /srv data
   ```

6. Take deduplicated synthetic-full snapshots with restic

   ```bash
   restic -r /srv/backup/restic backup /srv/data
   ```

7. Review media types and GFS rotation
8. Restore side-by-side and to an alternate location

   ```bash
   restic -r /srv/backup/restic restore latest --target /srv/restore-alt
   ```

9. Validate integrity and diff the restore against source

   ```bash
   restic -r /srv/backup/restic check
   ```


**Test it**

The learner verifies success by confirming the restic integrity check passes and the restored data matches the source.

> **Note:** Full commands and reference links are in labs/lab-26-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 27 — Disaster Recovery: Replication and Site Failover

Exam objective: 3.8 Disaster recovery (site types, replication, testing).

Goal: The learner replicates data async with rsync and near-sync with lsyncd, reviews sync/DRBD concepts, plans keepalived VIP failover and runs a tabletop DR exercise.

**What you'll build**

An async and near-real-time replication pair plus a DR tabletop exercise plan.   (Tools: rsync, lsyncd, keepalived, inotify-tools.)

**Step-by-step**

1. Install the DR tools

   ```bash
   apt update && apt install -y rsync lsyncd keepalived inotify-tools
   ```

2. Review hot/warm/cold/cloud site types
3. Replicate asynchronously with rsync

   ```bash
   rsync -avh --delete /srv/primary/ /srv/dr/
   ```

4. Configure near-real-time replication with lsyncd

   ```bash
   systemctl restart lsyncd
   ```

5. Confirm the change propagated to the DR copy

   ```bash
   cat /srv/dr/app.txt
   ```

6. Review synchronous replication (DRBD, semi-sync DB) trade-offs
7. Plan a keepalived VIP failover for DR cut-over
8. Review the four DR test types
9. Run the tabletop DR exercise and capture action items

**Test it**

The learner verifies success by confirming a change on the primary appears in the DR copy within seconds via lsyncd.

> **Note:** Full commands and reference links are in labs/lab-27-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


## Topic 04 — Troubleshooting  (28%)

Structured methodology · hardware · storage · OS/software · network · DR validation

**Key concepts**

- ('Methodology', 'The CompTIA 6-step model: identify the problem, theorise, test, plan, implement & verify, document — change one thing at a time.')
- ('Hardware faults', 'Power issues, POST/beep codes, failed drives (smartctl), overheating and memory errors (memtester, sensors).')
- ('Storage faults', 'Degraded/failed arrays, full or corrupt file systems (fsck), I/O bottlenecks and open-file locks.')
- ('OS & software faults', 'Boot and service failures (systemd, journalctl), failed patches, dependency and permission errors.')
- ('Network faults', 'Latency, DNS and gateway misconfiguration, packet loss and cabling — diagnosed with ping, mtr, dig and tcpdump.')
- ('DR validation', 'Testing backups and restores, verifying failover, and confirming RPO/RTO are actually met.')


### Lab 28 — Troubleshooting Methodology Walk-Through

Exam objective: 4.1 Troubleshooting theory and methodology.

Goal: The learner breaks nginx, then applies the Server+ 7-step methodology end-to-end from identifying the problem through root-cause analysis and documentation.

**What you'll build**

A resolved incident with an RCA and a documented post-incident record.   (Tools: nginx, journalctl, ss, systemctl.)

**Step-by-step**

1. Manufacture a fault by breaking the nginx listen port

   ```bash
   sed -i 's/listen 80;/listen 22;/' /etc/nginx/sites-enabled/default
   ```

2. Identify the problem and scope by collecting logs

   ```bash
   journalctl -u nginx -n 40 --no-pager
   ```

3. Replicate the fault from the server itself

   ```bash
   curl -sI http://127.0.0.1/ 2>&1 | head
   ```

4. Back up the config before making changes

   ```bash
   cp /etc/nginx/sites-enabled/default /root/default.pre-fix.$(date +%s)
   ```

5. Establish and test a theory (port 22 already in use)

   ```bash
   ss -tlnp 'sport = :22'
   ```

6. Implement the solution, one change at a time

   ```bash
   sed -i 's/listen 22;/listen 80;/' /etc/nginx/sites-enabled/default
   ```

7. Verify full system functionality including dependencies

   ```bash
   curl -sI http://127.0.0.1/ | head -1
   ```

8. Add a preventive config-validation measure
9. Perform a 5-whys root-cause analysis and document it

**Test it**

The learner verifies success by confirming nginx returns HTTP 200 and produces a documented RCA record.

> **Note:** Full commands and reference links are in labs/lab-28-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 29 — Troubleshooting Common Hardware Failures

Exam objective: 4.2 Troubleshoot common hardware failures.

Goal: The learner reads event logs first, stress-tests CPU thermals, checks memory/ECC and SMART predictive failures, and maps POST/LED/olfactory cues to causes.

**What you'll build**

A hardware fault decision tree exercised against event logs, sensors and SMART.   (Tools: dmesg, smartmontools, lm-sensors, memtester.)

**Step-by-step**

1. Install the hardware diagnostic tools

   ```bash
   apt update && apt install -y dmidecode lshw smartmontools lm-sensors memtester stress-ng edac-utils
   ```

2. Check event logs first for hardware faults

   ```bash
   journalctl -k | grep -iE 'mce|edac|temperature|throttl|over.?heat|ecc' | tail
   ```

3. Stress-test CPU and read thermals/utilisation

   ```bash
   stress-ng --cpu $(nproc) --timeout 10s --metrics-brief 2>&1 | tail
   ```

4. Check memory errors, ECC and crash-dump terms

   ```bash
   dmesg | grep -i mce | tail
   ```

5. Read SMART predictive-failure attributes

   ```bash
   smartctl -a /dev/sda 2>/dev/null | head -40
   ```

6. Review PSU/fan faults via the BMC SEL
7. Review CMOS battery failure symptoms

   ```bash
   chronyc tracking 2>/dev/null | head
   ```

8. Map POST codes and visual/auditory/olfactory cues to causes
9. Distinguish host-hardware faults from misallocated-VM symptoms

   ```bash
   iostat -x 1 3
   ```


**Test it**

The learner verifies success by mapping each Server+ 4.2 symptom to a concrete tool and reading SMART health for predictive failure.

> **Note:** Full commands and reference links are in labs/lab-29-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 30 — Storage Troubleshooting

Exam objective: 4.3 Troubleshoot storage problems.

Goal: The learner diagnoses disk/inode-full and slow I/O, recovers a corrupt superblock, rebuilds a failed RAID drive, and reviews cache-battery and cable faults.

**What you'll build**

Recovered filesystems and a rebuilt RAID array with a storage-fault tool map.   (Tools: mdadm, e2fsprogs, lsof, iotop.)

**Step-by-step**

1. Install the storage diagnostic tools

   ```bash
   apt update && apt install -y mdadm lvm2 e2fsprogs xfsprogs parted gdisk smartmontools lsof iotop sysstat
   ```

2. Check capacity and inode utilisation

   ```bash
   df -i
   ```

3. Diagnose slow I/O with iostat and iotop

   ```bash
   iostat -xz 1 5
   ```

4. Corrupt and then recover a filesystem via a backup superblock

   ```bash
   fsck.ext4 -b 32768 $LOOP || true
   ```

5. Create a RAID 5 array and fail a drive

   ```bash
   mdadm /dev/md30 --fail /dev/loop32 --remove /dev/loop32
   ```

6. Add a spare and watch the array rebuild

   ```bash
   mdadm /dev/md30 --add /dev/loop35
   ```

7. Review cache-battery failure and write slowdown
8. Read OS clues for cable/connector/backplane faults

   ```bash
   dmesg | grep -iE "ata|scsi|sas|link rate|hard reset" | tail
   ```

9. Diagnose page/swap errors

   ```bash
   swapon --show
   ```


**Test it**

The learner verifies success by mounting the recovered filesystem and confirming the RAID array rebuilds in /proc/mdstat.

> **Note:** Full commands and reference links are in labs/lab-30-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 31 — OS and Software Troubleshooting

Exam objective: 4.4 Troubleshoot common OS and software problems.

Goal: The learner triages systemd services, fixes clock skew and broken dpkg state, reviews recovery boot modes, and uses Ansible to prevent config drift.

**What you'll build**

A recovered service and package state plus an idempotent Ansible playbook.   (Tools: systemd, strace, chrony, ansible.)

**Step-by-step**

1. Install the OS troubleshooting tools

   ```bash
   apt update && apt install -y strace chrony ansible
   ```

2. Triage a service: status, dependencies, failed units

   ```bash
   systemctl list-units --type=service --state=failed
   ```

3. Diagnose a hanging service with strace

   ```bash
   strace -p $PID -e trace=accept4,read,write -c -f -t -o /tmp/strace.log &
   ```

4. Diagnose and fix clock skew that breaks auth

   ```bash
   chronyc -a 'burst 4/4'
   ```

5. Recover from a broken dpkg/patch state

   ```bash
   dpkg --configure -a 2>&1 | head
   ```

6. Check missing dependencies and downstream failures

   ```bash
   apt-cache rdepends openssl | head
   ```

7. Review recovery boot modes (rescue, emergency, snapshot)
8. Diagnose memory leak and set CPU affinity/priority

   ```bash
   ps -eo pid,comm,rss,nice,psr --sort=-rss | head -10
   ```

9. Prevent config drift with an idempotent Ansible playbook

   ```bash
   ansible-playbook playbook.yml 2>&1 | tail -10
   ```


**Test it**

The learner verifies success by confirming the service and package state recover and the Ansible playbook reports no changes on a second run.

> **Note:** Full commands and reference links are in labs/lab-31-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 32 — Network Connectivity Troubleshooting

Exam objective: 4.5 Troubleshoot network connectivity issues.

Goal: The learner triages 'I can't reach the server' bottom-up through the OSI layers using ip, ping, traceroute, dig, nc and tcpdump.

**What you'll build**

A repeatable bottom-up network triage exercised layer by layer.   (Tools: iproute2, dnsutils, tcpdump, mtr-tiny.)

**Step-by-step**

1. Install the network diagnostic tools

   ```bash
   apt update && apt install -y iproute2 iputils-ping dnsutils tcpdump mtr-tiny traceroute nmap netcat-openbsd
   ```

2. Layer 1: check link, cable and NIC state

   ```bash
   ethtool eth0 2>/dev/null | head
   ```

3. Layer 2: check NIC config and the ARP table

   ```bash
   ip neigh
   ```

4. Layer 3: check addressing, gateway and routes

   ```bash
   ip route get 8.8.8.8
   ```

5. Test reachability with ping, traceroute and mtr

   ```bash
   mtr -rwc 5 8.8.8.8 2>/dev/null | head
   ```

6. Resolve names down the DNS chain

   ```bash
   dig +short example.com
   ```

7. Test port reachability with nc and nmap

   ```bash
   nc -vz example.com 80 2>&1 | head
   ```

8. Capture packets to find the silent direction

   ```bash
   tcpdump -ni eth0 -c 10 'icmp or port 53' 2>&1 | head
   ```

9. Work the bottom-up decision tree

**Test it**

The learner verifies success by walking a connectivity failure layer by layer and pinpointing the drop with tcpdump.

> **Note:** Full commands and reference links are in labs/lab-32-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


### Lab 33 — Security Troubleshooting

Exam objective: 4.6 Troubleshoot security problems.

Goal: The learner audits open ports and process states, checks file integrity with AIDE, hunts privilege-escalation misconfigs and runs an anti-malware scan.

**What you'll build**

A security triage covering ports, processes, file integrity and malware.   (Tools: nmap, lsof, aide, chkrootkit, clamav.)

**Step-by-step**

1. Install the security troubleshooting tools

   ```bash
   apt update && apt install -y nmap lsof aide chkrootkit clamav clamav-daemon auditd
   ```

2. Audit open ports against the firewall policy

   ```bash
   nmap -sT -p- -T4 127.0.0.1 2>/dev/null | head -30
   ```

3. Classify process states: active, orphan, zombie

   ```bash
   ps -eo pid,ppid,state,user,comm | awk '$3=="Z"'
   ```

4. Scan for rogue processes and rootkits

   ```bash
   chkrootkit | head -30
   ```

5. Baseline and check file integrity with AIDE

   ```bash
   aide --check 2>&1 | head
   ```

6. Hunt world-writable, SUID and writable-sudoers misconfigs

   ```bash
   find / -xdev \( -perm -4000 -o -perm -2000 \) -type f 2>/dev/null | head
   ```

7. Run an anti-malware scan with the EICAR test file

   ```bash
   clamscan /tmp/scan/ 2>&1 | tail -10
   ```

8. Triage 'cannot open file': perms, MAC policy, service health

   ```bash
   getfacl /srv/share/
   ```

9. Work the security decision tree

**Test it**

The learner verifies success by detecting the AIDE integrity drift and the EICAR test file with ClamAV.

> **Note:** Full commands and reference links are in labs/lab-33-*.md. Run every lab inside the disposable Killercoda VM; only run scanning, password or media-destruction techniques against systems you own or are authorised to test.

---


## Exam Focus — Cross-Cutting Server+ Topics

These cross-cutting topics are examined throughout SK0-005 but are woven across several labs rather than each having a single dedicated one. Study this section alongside the labs so you can answer the knowledge questions on the exam.

**RAID capacity and fault-tolerance (Domain 1)**

Know the usable-capacity and fault-tolerance formula for every RAID level — the exam tests these directly:

- RAID 0 (stripe) — usable = N x disk; tolerates 0 drive failures; performance only, no redundancy.
- RAID 1 (mirror) — usable = 1 x disk (50% overhead); tolerates 1 failure; simple redundancy for the OS disk.
- RAID 5 (single parity) — usable = (N - 1) x disk; tolerates 1 failure; poor for write-heavy workloads.
- RAID 6 (double parity) — usable = (N - 2) x disk; tolerates 2 failures; preferred for large SATA arrays with long rebuilds.
- RAID 10 (stripe of mirrors) — usable = N / 2; tolerates 1 failure per mirror; best blend of speed and redundancy for databases.
- DAS vs. NAS vs. SAN; NFS/SMB serve files, iSCSI/Fibre Channel serve block LUNs; always plan capacity with growth headroom.

**Networking and subnetting (Domain 2)**

- IPv4 addressing, CIDR and subnet masks; work these out with the free IP Calculator at https://alfredang.github.io/ipcalculator/.
- DNS record types (A, AAAA, PTR, CNAME, MX), DHCP scopes and reservations, FQDN and the default gateway.
- VLANs segment a switch into broadcast domains; a server trunk carries tagged VLANs (802.1Q).
- Virtualization: host vs. guest, type-1 vs. type-2 hypervisors, resource allocation and over-commit; IaaS/PaaS/SaaS and public/private/hybrid cloud models.

**Security, hardening and the data lifecycle (Domain 3)**

- Encryption at rest (LUKS, BitLocker) vs. in transit (TLS, SSH); manage keys and certificates carefully.
- IAM — least privilege, RBAC, strong password policy and MFA (TOTP); disable unused accounts.
- Hardening — patch promptly, disable unused services and ports, apply host firewalls and MAC (AppArmor/SELinux), and audit with a tool such as Lynis.
- Decommissioning follows NIST SP 800-88 — clear, purge or destroy media according to its sensitivity, and record the disposal.
- Backup types (full, incremental, differential, snapshot), the 3-2-1 rule, and DR metrics RPO (data loss tolerated) and RTO (time to recover).

**The troubleshooting methodology (Domain 4)**

Apply the CompTIA six-step model to every fault, and change only one thing at a time so you can attribute the fix:

- 1. Identify the problem — gather information, question users, note recent changes.
- 2. Establish a theory of probable cause (question the obvious first).
- 3. Test the theory to determine the cause; if it fails, form a new theory or escalate.
- 4. Establish a plan of action and identify potential effects.
- 5. Implement the solution (or escalate), then verify full system functionality.
- 6. Document findings, actions and outcomes.

---


## Exam Preparation

- First pass: complete every lab on the Killercoda Ubuntu playground, reading the reference links in each lab file.
- Second pass: redo the labs from memory until the command workflow and flags are automatic.
- Review the 'Test it' check and the 'What you learned' bullets for any topic you find hard.
- Memorise the RAID capacity/fault-tolerance formulas, subnetting, and the six-step troubleshooting model.
- Sharpen exam readiness with the Tertiary Infotech CompTIA Server+ practice exam: https://exams.tertiaryinfotech.com/practice-exams/comptia/comptia-server-plus
- Take the free CompTIA practice assessment for SK0-005 and sit the exam via a Pearson VUE test centre or online proctoring.


## Glossary

- **RAID** — Redundant Array of Independent Disks — combines drives for performance and/or fault tolerance (levels 0/1/5/6/10).
- **JBOD** — Just a Bunch Of Disks — disks concatenated into one volume with no striping or parity.
- **LVM** — Logical Volume Manager — abstracts physical disks into flexible, resizable logical volumes.
- **DAS / NAS / SAN** — Direct-attached / network-attached (file) / storage-area network (block) storage architectures.
- **iSCSI** — A protocol that carries SCSI block storage (LUNs) over an IP network.
- **Out-of-band management** — Managing a server independently of its OS via a BMC — IPMI, iDRAC or iLO.
- **Hypervisor** — Software that runs virtual machines; type-1 runs on bare metal, type-2 on a host OS.
- **VLAN** — Virtual LAN — a logically isolated broadcast domain on a shared physical switch (802.1Q).
- **High availability** — Removing single points of failure through clustering, load balancing and failover.
- **RPO / RTO** — Recovery Point Objective (acceptable data loss) / Recovery Time Objective (acceptable downtime).
- **3-2-1 rule** — Three copies of data, on two media types, with one copy off-site.
- **Hardening** — Reducing a server's attack surface by patching, disabling unused services and applying host controls.
- **NIST 800-88** — The standard for media sanitization — clear, purge or destroy data before disposal.
