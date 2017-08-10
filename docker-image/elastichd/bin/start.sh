flock -n /tmp/eshd.lock -c "/opt/elastichd/bin/dostart.sh >> /opt/qingcloud/app-agent/log/app.log"
if [ $? -ne 0 ]; then
    echo "[=[Start]=] Can't lock the file."
else
    echo "[=[Start]=] Lock the file successfully."
fi
rm -f /tmp/eshd.lock