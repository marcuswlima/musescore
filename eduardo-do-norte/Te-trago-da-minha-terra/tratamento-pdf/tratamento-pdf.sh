#!/bin/bash

# pdftk in.pdf cat 1-12 14-end output out1.pdf
# pdftk in1.pdf in2.pdf cat output out1.pdf
##pdftk $SOURCE cat 28    output $DADOS/Te-trago-da-minha-terra06.pdf ##canto de carimbo
##  $DADOS/Te-trago-da-minha-terra06.pdf \


DADOS=../../../../_dados
SOURCE=$DADOS/Te-trago-da-minha-terra.pdf

pdftk $SOURCE cat 15    output $DADOS/Te-trago-da-minha-terra01.pdf ##da minha terra
pdftk $SOURCE cat 06 07 output $DADOS/Te-trago-da-minha-terra02.pdf ##to que to saudade
pdftk $SOURCE cat 08 09 output $DADOS/Te-trago-da-minha-terra03.pdf ##olhando belém
pdftk $SOURCE cat 27 28 output $DADOS/Te-trago-da-minha-terra04.pdf ##nao pequei o ita
pdftk $SOURCE cat 23 24 output $DADOS/Te-trago-da-minha-terra05.pdf ##destino marajoara
pdftk $SOURCE cat 12    output $DADOS/Te-trago-da-minha-terra07.pdf ##coracao sonhador
pdftk $SOURCE cat 29    output $DADOS/Te-trago-da-minha-terra08.pdf ##toca tocantins
pdftk $SOURCE cat 14    output $DADOS/Te-trago-da-minha-terra09.pdf ##amazonia
pdftk $SOURCE cat 13    output $DADOS/Te-trago-da-minha-terra10.pdf ##tempo destino
pdftk $SOURCE cat 30    output $DADOS/Te-trago-da-minha-terra11.pdf ##perola azulada
pdftk $SOURCE cat 25    output $DADOS/Te-trago-da-minha-terra13.pdf ##marajoara
pdftk $SOURCE cat 31    output $DADOS/Te-trago-da-minha-terra14.pdf ##para
pdftk $SOURCE cat  5    output $DADOS/Te-trago-da-minha-terra15.pdf ##não vou sair
pdftk $SOURCE cat  3 04 output $DADOS/Te-trago-da-minha-terra16.pdf ##olho de boto
pdftk $SOURCE cat 10 11 output $DADOS/Te-trago-da-minha-terra17.pdf ##flor do destino
pdftk $SOURCE cat 02    output $DADOS/Te-trago-da-minha-terra18.pdf ##sabor acai

pdftk  \
  $DADOS/Te-trago-da-minha-terra01.pdf \
  $DADOS/Te-trago-da-minha-terra02.pdf \
  $DADOS/Te-trago-da-minha-terra03.pdf \
  $DADOS/Te-trago-da-minha-terra04.pdf \
  $DADOS/Te-trago-da-minha-terra05.pdf \
  $DADOS/Te-trago-da-minha-terra07.pdf \
  $DADOS/Te-trago-da-minha-terra08.pdf \
  $DADOS/Te-trago-da-minha-terra09.pdf \
  $DADOS/Te-trago-da-minha-terra10.pdf \
  $DADOS/Te-trago-da-minha-terra11.pdf \
  $DADOS/Te-trago-da-minha-terra13.pdf \
  $DADOS/Te-trago-da-minha-terra14.pdf \
  $DADOS/Te-trago-da-minha-terra15.pdf \
  $DADOS/Te-trago-da-minha-terra16.pdf \
  $DADOS/Te-trago-da-minha-terra17.pdf \
  $DADOS/Te-trago-da-minha-terra18.pdf \
    cat output $DADOS/Te-trago-da-minha-terra-final.pdf 