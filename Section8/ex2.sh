
log()
{
    SEV=$1
    shift
    MSG=$@

    logger -t randomly -s -i -p user.$SEV "$MSG" -  $RANDOM, $RANDOM, $RANDOM
}


log $1 $2

