# packer-CentOS7

## What is packer-CentOS7 ?

packer-CentOS7 is a set of configuration files used to build an automated CentOS 7 virtual machine images using [Packer](https://www.packer.io/).
This Packer configuration file allows you to build images for VMware Workstation and Oracle VM VirtualBox.

## Prerequisites

* [Packer](https://www.packer.io/downloads.html)
  * <https://www.packer.io/intro/getting-started/install.html>
* A Hypervisor
  * [VMware Workstation](https://www.vmware.com/products/workstation-pro.html)
  * [Oracle VM VirtualBox](https://www.virtualbox.org/)

## How to use Packer

Commands to create an automated VM image:

To create a CentOS 7 VM image using VMware Workstation use the following commands:

```cmd
cd c:\packer-CentOS7
packer build -only=vmware-iso centos7.json
```

To create a CentOS 7 VM image using Oracle VM VirtualBox use the following commands:

```cmd
cd c:\packer-CentOS7
packer build -only=virtualbox-iso centos7.json
```

*If you omit the keyword "-only=" both the Workstation and Virtualbox VMs will be created.*

By default the .iso of CentOS 7 is pulled from <http://miroir.univ-paris13.fr/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1804.iso>

You can change the URL to one closer to your build server. To do so change the **"iso_url"** parameter in the **"variables"** section of the centos7.json file.

```json
{
  "variables": {
      "iso_url": "http://miroir.univ-paris13.fr/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1804.iso"
}
```

## Default credentials

The default credentials for this VM image are:

|Username|Password|
|--------|--------|
|packer|packer|
|root|packer|