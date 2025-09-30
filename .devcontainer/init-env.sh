#!/usr/bin/env bash
apt update
apt install wget p7zip libcurl4 -y
wget https://github.com/covscript/csbuild/releases/download/ubuntu-schedule/covscript-ubuntu-x86_64-nightly.deb
wget https://github.com/covscript/csbuild/releases/download/ubuntu-schedule/cspkg-ubuntu-x86_64-nightly.7z
dpkg -i covscript-ubuntu-x86_64-nightly.deb
7zr x cspkg-ubuntu-x86_64-nightly.7z
rm covscript-ubuntu-x86_64-nightly.deb cspkg-ubuntu-x86_64-nightly.7z
cspkg -i cspkg --yes
cspkg -c source --set "file://$(pwd)/cspkg-repo"
cspkg -i --fix --yes
cspkg -i ecs_bootstrap analysis --yes
