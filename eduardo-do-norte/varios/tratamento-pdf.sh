#!/bin/bash

# pdftk in.pdf cat 1-12 14-end output out1.pdf
# pdftk in1.pdf in2.pdf cat output out1.pdf
##pdftk $SOURCE cat 28    output $DADOS/Te-trago-da-minha-terra06.pdf ##canto de carimbo

DADOS=../../../_dados


pdftk ../../../_dados/Da\ Amazônia\,\ do\ Mundo-Electric_Bass.pdf cat 01-01 output musicas01.pdf
pdftk ../../../_dados/Da\ Amazônia\,\ do\ Mundo.pdf               cat 03-04 output musicas02.pdf
pdftk ../../../_dados/Da\ Amazônia\,\ do\ Mundo-Electric_Bass.pdf cat 12-19 output musicas10a15.pdf
pdftk ../../../_dados/Da\ Amazônia\,\ do\ Mundo.pdf               cat 34-39 output musicas16a17.pdf

#pdftk                               \
#  ../../../_dados/musicas01a07.pdf  \
#  ../../../_dados/musicas08a09.pdf \  
#  ../../../_dados/musicas10a15.pdf \
#  ../../../_dados/musicas16a16.pdf \  
#  ../../../_dados/musicas17a17.pdf \
#    #cat output /home/marcus/musician/_dados/asd.pdf

pdftk musicas01a07.pdf musicas08a09.pdf musicas10a15.pdf musicas16a17.pdf cat output out1.pdf

