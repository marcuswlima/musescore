#!/bin/bash

##############
# Variaveis
##############
pasta=/home/marcuswlima/Musician/github/_dados
origem=$pasta/ruan-lennon-porto-ver-o-rio.pdf 
destino=$pasta/luz-do-mundo.pdf

##############
# Separar
##############
pdfseparate $origem p%d.pdf

##############
# Juntar
##############
pdfunite                        \
p46.pdf p47.pdf            \
/home/marcuswlima/Musician/github/_dados/a-luz-do-mundo.pdf

pdfunite                        \
p49.pdf             \
/home/marcuswlima/Musician/github/_dados/amor-amor.pdf


rm p*.pdf

#bluetooth-sendto --device=74:BE:F3:5C:B1:62 $destino



