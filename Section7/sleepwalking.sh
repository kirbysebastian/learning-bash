
CMD=$1

case "$CMD" in
    [sS][tT][aA][rR][tT])
        echo "$CMD: started."
        ;;
    [sS][tT][oO][pP])
        echo "$CMD: stopped."
        ;;
    *)
        echo "Usage: start|stop"
        exit 1
        ;;
esac

