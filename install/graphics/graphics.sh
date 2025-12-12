#!/bin/bash
source amd-igpu.sh
source nvidia-dgpu.sh

sudo udevadm control --reload
sudo udevadm trigger
