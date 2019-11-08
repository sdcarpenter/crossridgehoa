VOLUME=

case "$1" in
    hoa-wordpress|hoa-dbdata) VOLUME=$1;;
    *) echo "Unknown container"; exit 1 ;;
esac

docker run --rm -i \
  -v crossridge-hoa_$VOLUME:/target \
  busybox tar -xzC /target < $VOLUME-backup.tar.gz