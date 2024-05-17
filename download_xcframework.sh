#!/bin/bash

# Define the Dropbox URL and the destination path
DROPBOX_URL="https://www.dropbox.com/scl/fo/6xzv6a8cnk1omrw69toze/AFtmK994wEioQmZEZ_rn71k?rlkey=fqls60ltwob4v3ywjt2lzztjl&st=ytrief2g&dl=0"
DESTINATION="candlestickchart.xcframework.zip"

# Download the file from Dropbox
curl -L -o $DESTINATION "$DROPBOX_URL"
