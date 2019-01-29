#!/bin/bash

if [ $# -le 0 ]
then
    echo Usage $0
fi

DATE=$(date +%Y-%m-%d)
FILE_NAME=$(echo $@ | sed s/' '/-/g)

cat > $DATE-$FILE_NAME.md << EOF
---
layout: post
title: $@
date: $(date '+%F %T')
published: false
---
EOF
