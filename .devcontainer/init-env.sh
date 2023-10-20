#!/usr/bin/env bash
apt update
apt install wget libcurl4 -y
wget https://github.com/covscript/csbuild/releases/download/ubuntu-schedule/covscript-amd64-nightly.deb
dpkg -i covscript-amd64-nightly.deb
rm covscript-amd64-nightly.deb
cspkg -i ecs_bootstrap analysis --yes