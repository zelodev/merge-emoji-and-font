#!/bin/bash

git clone https://github.com/googlefonts/nanoemoji.git
cp -R ./svg ./nanoemoji/svg
cd nanoemoji
python3 -m venv .
source bin/activate
python3 -m pip install -e .
nanoemoji --ignore_reuse_error -v 0 --color_format=glyf_colr_0 $(find ./svg -name '*.svg') 
deactivate