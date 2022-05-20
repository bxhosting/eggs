#!/bin/bash

changeFile="VRisingServer_Data/StreamingAssets/Settings/ServerHostSettings.json"

sed -i 's/ï//g' $changeFile
