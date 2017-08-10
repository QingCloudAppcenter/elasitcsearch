flock -n /tmp/kbn.lock -c "/opt/kibana/bin/dostop.sh >> /opt/qingcloud/app-agent/log/app.log"
if [ $? -ne 0 ]; then
    echo "[=[Stop]=] Can't lock the file."
else
    echo "[=[Stop]=] Lock the file successfully."
fi
rm -f /tmp/kbn.lock
