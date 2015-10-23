#!/bin/bash

docker run -v /$(pwd)/kiibohd:/kiibohd --rm -i -t fmerizen/ergodox-infinity-layout $*
