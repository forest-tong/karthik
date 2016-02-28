BASE_DIR=$(dirname $0)
cal $1 > $BASE_DIR/cal_output
python $BASE_DIR/split-calendar.py | less
rm $BASE_DIR/cal_output
