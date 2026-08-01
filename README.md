![img](https://openzfs.github.io/openzfs-docs/_static/img/logo/480px-Open-ZFS-Secondary-Logo-Colour-halfsize.png)

# [Open]ZFS (Patched userspace and kernel module)

**ZFS** is an advanced file system and volume manager originally developed for Solaris.

It is now maintained and developed by the OpenZFS and open-source communities.

Upstream development of the project can often be very slow and methodical, albeit justified.

However, this leaves users on the more recent Linux kernels without the ability to benefit from ZFS.

Well, we've fixed that!

This repository contains the patches, and the build and install scripts for running ZFS on the GNU Operating
System / H-Linux platform.

---

## Prerequisites

- GNU Operating System / H-Linux instance
- H-Linux env library
- H-Linux human command layer
- ccache

---

## Components

Our patched package set includes both the userspace utilities and kernel module packages.

The included build and installation scripts entirely bypasses all reliance on the unstable **dkms** procedure.

---

## Build

```bash
> gh repo clone fpucore/zfs

> goto zfs

> ./build
```

---

## Install

```bash
> elevate ./install
```

---

## Linux

Given the wide variety of Linux environments, we prioritize maintenance of our packaging on the GNU Operating
Sysytem / H-Linux platform.

### Arch-based support

With relatively minimal effort and having the correct prerequisites in place, these packages can be installed on
any Arch-based Linux environment.

---

## Credits

This project is based on the upstream [openzfs](https://www.github.com/openzfs/zfs) project.

Upstream **OpenZFS** provides the foundation for this work and is a near drop-in replacement.

Any patches, repackaging and other modifications focus on downstream integration, packaging, UX improvements,
and distribution-specific requirements.

---

## License

This project is licensed under **COMMON DEVELOPMENT AND DISTRIBUTION LICENSE Version 1.0**.
