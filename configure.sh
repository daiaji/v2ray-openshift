#!/bin/bash
# V2Ray new configuration
echo "$CONFIG_JSON" > /config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/config.json
