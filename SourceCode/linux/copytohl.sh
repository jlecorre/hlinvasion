#!/bin/bash
user=$(whoami)
base_path="/home/${user}/.steam/steam/SteamApps/common/Half-Life/invasion"
path_cl="${base_path}/cl_dlls"
path_hl="${base_path}/dlls"
mv release/hl.so release/invasion.so
cp release/client.so $path_cl
cp release/invasion.so $path_hl
