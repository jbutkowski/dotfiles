#!/bin/sh

set -e

cd $(mktemp -d)

wget http://sourceforge.net/projects/sourcecodepro.adobe/files/SourceCodePro_FontsOnly-1.017.zip/download
unzip -od ~/.fonts/ download SourceCodePro_FontsOnly-1.017/OTF/\*
fc-cache -vf ~/.fonts
