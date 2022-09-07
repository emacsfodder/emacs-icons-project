#!/bin/bash
if [[ $# != 2 ]];then
   echo "Usage: $0 <svgfile> <iconset>"
else
   svg="$1"
   iconset="$2"
   inkscape="${inkscape:-/Applications/Inkscape.app/Contents/MacOS/inkscape}"
   echo "${svg} ⇒ ${iconset}"
   [[ -d "${iconset}" ]] || mkdir "${iconset}"
   for n in 16 32 128 256 512; do
       for retina in "" "@2x"; do
           if [[ $retina == "" ]]; then
               width=$n
           else
               width=$(($n * 2))
           fi
           out="${iconset}/icon_${n}x${n}${retina}.png"
           echo "     ${out} (${width}px)"
           $inkscape \
               --export-filename=$out \
               --export-width=$width \
               --export-type=png \
               "$svg" 2> /dev/null
       done
   done
fi
