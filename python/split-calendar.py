'''
Splits the output of 'cal _' shell command
so that different months don't occur on the same lines.
'''
import sys

MONTH_ROWS = 4  # Number of rows of months
MONTH_COLS = 3  # Number of columns of months
MONTH_WIDTH = 20  # Number of characters a month is wide
MONTH_HEIGHT = 8  # Number of characters a month is tall
VSPACES = 2  # Number of spaces vertically separating months
LINE_LENGTH = MONTH_COLS*(MONTH_WIDTH + VSPACES) - 1

FILE_PATH='./cal_output'

def preprocess(lines):
  for i in xrange(len(lines)):
    if len(lines[i]) < LINE_LENGTH + 1:
      spaces = []
      for _ in xrange(LINE_LENGTH - len(lines[i])):
        spaces.append(' ')
      lines[i] = lines[i][:-1] + ''.join(spaces)
  return lines

def main(argv):
  #cal_output = argv[1]
  #lines = '\n'.split(cal_output)

  with open(FILE_PATH) as f:
    lines = preprocess(f.readlines())

  output_lines = []

  # First line contains centered year
  year = lines[0].strip()
  output_lines.append('Year ' + year)
  output_lines.append('')
  
  # Next line is blank.

  for row in xrange(MONTH_ROWS):
    for col in xrange(MONTH_COLS):
      for line in xrange(MONTH_HEIGHT):
        output_line = lines[MONTH_HEIGHT*row + line + 2][
          (MONTH_WIDTH + VSPACES)*col : (MONTH_WIDTH + VSPACES)*col + MONTH_WIDTH]
        if output_line.strip() != '':
          output_lines.append(output_line)
      output_lines.append('');
  print '\n'.join(output_lines)

if __name__ == '__main__':
  main(sys.argv)
