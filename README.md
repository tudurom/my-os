# Tudor's OS image

This is my personal Fedora config. It's based on [Universal Blue](https://universal-blue.org).

## Installation

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/tudurom/my-os:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/tudurom/my-os:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

This repository builds date tags as well, so if you want to rebase to a particular day's build:

```
rpm-ostree rebase ostree-image-signed:docker://ghcr.io/tudurom/my-os:20240214
```

## ISO

There is an ISO available in the "Releases" section.

## Nix

Because this is a UBlue-derived image, it comes with a couple justfiles for [`just`](https://just.systems/).
You can use this to install Nix:

```
ujust nix
```

See [the just-page in the Universal Blue documentation](https://universal-blue.org/guide/just/) for more information.
