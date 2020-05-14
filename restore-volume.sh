VOLUME=

case "$1" in
    hoa-dbdata) VOLUME=$1;;
    *) echo "Unknown volume"; exit 1 ;;
esac

docker run --rm -i \
  -v crossridgehoa_$VOLUME:/target \
  busybox tar -xzC /target < $VOLUME-backup.tar.gz
