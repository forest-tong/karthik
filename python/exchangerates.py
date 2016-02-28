"""
Script for displaying exchange rates of a base currency
"""

import sys
import json

def main(argv):
    exchange_rates_json = argv[1]
    exchange_rates_dict  = json.loads(exchange_rates_json)
    BASE_CURRENCY = exchange_rates_dict["base"]
    OTHER_CURRENCIES = exchange_rates_dict["rates"]
    print "Exchange Rates For:", BASE_CURRENCY
    print json.dumps(OTHER_CURRENCIES, sort_keys=True, indent=4, separators=(',', ': '))

if __name__ == '__main__':
    main(sys.argv)
