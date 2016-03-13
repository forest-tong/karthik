"""
Script for displaying weather of a particular locale
"""

import sys
import json

def main(argv):
    location_json = argv[1]
    # location_dict = json.loads(location_json)
    print location_json
    # CITY = location_dict["city"]
    # COUNTRY = location_dict["country"]
    # print "Weather For: " + CITY + ", " + COUNTRY
    # print json.dumps(location_dict, sort_keys=True, indent=4, separators=(',', ': '))

if __name__ == '__main__':
    main(sys.argv)
