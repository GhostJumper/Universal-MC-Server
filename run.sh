#!/bin/bash

cd /mc

# Check if FILE_URL environment variable is set
if [ -z "$FILE_URL" ]; then
  echo "FILE_URL environment variable is not set. Exiting."
  exit 1
fi

# Check if XMX environment variable is set
if [ -z "$XMX" ]; then
  echo "XMX environment variable is not set. Exiting."
  exit 1
fi

# Check if server.jar file already exists
if [ ! -f "server.jar" ]; then
    # Download the file with curl and save it as server.jar
    curl -o server.jar $FILE_URL
else
    echo "server.jar already exists. Skipping download."
fi

# Start the Java application
java -Xmx${XMX} -jar server.jar
