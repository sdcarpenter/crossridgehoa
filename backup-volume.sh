VOLUME=

case "$1" in
    nginx|hoa-dbdata|certbot-etc) VOLUME=$1;;
    *) echo "Unknown container"; exit 1 ;;
esac

docker run --rm \
    -v crossridgehoa_$VOLUME:/source:ro \
    busybox tar -czC /source . > $VOLUME-backup.tar.gz
