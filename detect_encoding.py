#!/usr/bin/python

import sys
import glob
from chardet.universaldetector import UniversalDetector

detector = UniversalDetector()
detector.reset()
contents=file(sys.argv[1], 'rb').read()
detector.feed(contents)
detector.close()
print detector.result['encoding']
