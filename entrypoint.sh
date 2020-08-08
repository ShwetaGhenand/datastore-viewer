#!/bin/sh

# Setup a project
# https://github.com/GabiAxel/google-cloud-gui/issues/3

echo "{
  \"projects\": [
    {
      \"service\": \"datastore\",
      \"projectId\": \"${DSVIEWER_PROJECT_ID}\",
      \"apiEndpoint\": \"${DSVIEWER_DATASTORE_ENDPOINT}\",
      \"id\": \"0d08bae6-1cb0-4973-8d11-a7b483f15406\"
    }
  ]
}" > /root/.google-cloud-gui-db.json

echo About to start google-cloud-gui on http://0.0.0.0:$DSVIEWER_PORT

google-cloud-gui --port=$DSVIEWER_PORT --skip-browser