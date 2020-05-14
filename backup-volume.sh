VOLUME=

case "$1" in
    hoa-dbdata) VOLUME=$1;;
    *) echo "Unknown volume"; exit 1 ;;
esac

docker run --rm \
    -v crossridgehoa_$VOLUME:/source:ro \
    busybox tar -czC /source . > $VOLUME-backup.tar.gz
