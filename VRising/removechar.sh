#!/bin/bash

changeFile="VRisingServer_Data/StreamingAssets/Settings/ServerHostSettings.json"

sed 's/ï//g' $changeFile
