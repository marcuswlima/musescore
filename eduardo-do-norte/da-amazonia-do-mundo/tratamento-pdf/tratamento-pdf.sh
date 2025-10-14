#!/bin/bash

##############
# Variaveis
##############
pasta=/home/marcuswlima/Musician/github/_dados
origem=$pasta/da-amazonia-do-mundo.pdf 
destino=$pasta/eduardo-du-norte-cirio-iluminado.pdf

##############
# Separar
##############
pdfseparate $origem p%d.pdf

##############
# Juntar
##############
pdfunite                        \
p1.pdf p2.pdf p3.pdf            \
p4.pdf p5.pdf                   \
p6.pdf p7.pdf                   \
p8.pdf p9.pdf                   \
p12.pdf p13.pdf                 \
p14.pdf p15.pdf                 \
p18.pdf p19.pdf p20.pdf         \
p25.pdf p26.pdf p27.pdf p28.pdf \
p39.pdf                         \
p40.pdf p41.pdf p42.pdf p43.pdf \
p44.pdf p45.pdf                 \
$destino


rm p*.pdf

bluetooth-sendto --device=74:BE:F3:5C:B1:62 $destino



