#!/usr/bin/env bash
set -e

export GRADLE_OPTS=-Dorg.gradle.native=false
#version=`cat version/number`
cd Bitbucket_Repository
gradle assemble -Pversion=$version
cp build/libs/*.war ../artifact-dir/
