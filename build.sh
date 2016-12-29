#!/bin/sh

# Get tag
if [ -z "$1" ]; then
	echo "What's the new tag ? (no prefix v)"
	read VERSION
else
	VERSION="$1"
fi

if [ -z "$VERSION" ]; then
	echo "No tag. Aborting..."
	exit 1
fi

# Build image
docker build -t xuqingfeng/hostname:"$VERSION" .