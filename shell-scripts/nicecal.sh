BASE_DIR=$(dirname $0)
PYTHON_DIR=$BASE_DIR/../python

# Output reformatted calendar to less
echo $PYTHON_DIR
cal $1 > $PYTHON_DIR/cal_output
python $PYTHON_DIR/split-calendar.py | less
rm $PYTHON_DIR/cal_output
