#!/bin/bash

# The MIT License

# Copyright 2023 Shunsuke KIMURA

# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

if [ $# = 0 ]; then
  echo "[Usage] ./convert_to_eps IMG_FILE"
  exit 1
fi
if [ ![ `find . -name $1` ] ]; then
  echo "'$1': No such flie"
  exit 1
fi

if !(type convert > /dev/null 2>&1); then
  [[ "$(uname)" == 'Darwin' ]] && brew install imagemagick
  type apt > /dev/null 2>&1 && sudo apt install imagemagick
fi

cd "$(dirname $0)/../fig"
convert $(basename $1) eps2:$(basename ${1%.*}).eps

exit 0