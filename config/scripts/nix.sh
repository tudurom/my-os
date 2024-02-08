#!/usr/bin/env bash

set -oue pipefail

just -f /usr/share/ublue-os/justfile nix ACTION="install"
