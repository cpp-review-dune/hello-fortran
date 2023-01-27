# -----------------------------------------------------------------------------
# Convertlatex-pdfPlots.sh ---
#
# Created by: Ronal De La Cruz Araujo   date: July 2013
#             Ronal De la Cruz Araujo  updated: Oct 28 2015. To make svg file            
#-------------------------------------------------------------------------------

#!/bin/bash
latex TMPplotfile.tex
dvips -o TMPplotfile.ps TMPplotfile.dvi
ps2pdf TMPplotfile.ps
# to convert to .svg to upload to inkscape and make a .eps image
#ps2eps TMPplotfile.ps # don't works very well
dvisvgm --no-fonts TMPplotfile.dvi -o TMPplotfile.svg #to make high quality svg 
pdfcrop TMPplotfile.pdf TMPplotfilec.pdf
echo -n "Enter the name of the plot without extension(the extension is pdf) : "
read my_fname

 mv TMPplotfilec.pdf $my_fname.pdf
 mv TMPplotfile.svg $my_fname.svg

 convert -density 600 $my_fname.pdf $my_fname.png

echo "done plot $my_fname.pdf !"
 rm TMPplotfile*
