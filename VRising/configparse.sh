#!/bin/bash

changeFile="VRisingServer_Data/StreamingAssets/Settings/ServerHostSettings.json"

while getopts p:q:n:t: flag
do
    case "${flag}" in
        p) sPort=${OPTARG};;
        q) qPort=${OPTARG};;
        n) sName=${OPTARG};;
        t) sType=${OPTARG};;
    esac
done

serverPort="   \"Port\": $sPort,"
queryPort="   \"QueryPort\": $qPort,"
serverName="   \"Name\": \"$sName\","
serverType="   \"GameSettingsPreset\": \"$sType\","


sed -i "/\"Port\":/c\ $serverPort" "$changeFile"
sed -i "/\"QueryPort\":/c\ $queryPort" $changeFile
sed -i "/\"Name\":/c\ $serverName" $changeFile
sed -i "/\"GameSettingsPreset\":/c\ $serverType" $changeFile
