#! /bin/bash

echo "Build Web Site with Jekyll Engine"

build="jekyll build"
$build

echo "Firebase Deploying..."

deploy="firebase deploy"
$deploy

echo "Firebase Deploy Completed"
