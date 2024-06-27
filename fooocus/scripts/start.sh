#! /bin/bash

echo "启动中……"

if [ ! -d "/root/zscloud-tmp/outputs" ]; then
  mkdir -p /root/zscloud-tmp/outputs
fi

preset="default"
if [ ! -z "$1" ]; then
  preset=$1
fi

source /root/tzwm-zscloud/common/scripts/init-proxy.sh && \
cd /root/Fooocus && \
source venv/bin/activate && \
python launch.py --port 6006 --listen 0.0.0.0 --preset $preset  --language cn
