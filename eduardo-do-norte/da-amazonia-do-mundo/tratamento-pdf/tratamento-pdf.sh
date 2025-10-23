#!/bin/bash

##############
# Variaveis
##############
pasta=/home/marcuswlima/Musician/github/_dados
origem=$pasta/da-amazonia-do-mundo.pdf 
destino=$pasta/luz-do-mundo.pdf

##############
# Separar
##############
pdfseparate $origem p%d.pdf

##############
# Juntar
##############
pdfunite                        \
p1.pdf p2.pdf p3.pdf            \
$destino

pdfunite                        \
p40.pdf p41.pdf p42.pdf p43.pdf          \
/home/marcuswlima/Musician/github/_dados/banzero.pdf


rm p*.pdf

#bluetooth-sendto --device=74:BE:F3:5C:B1:62 $destino



