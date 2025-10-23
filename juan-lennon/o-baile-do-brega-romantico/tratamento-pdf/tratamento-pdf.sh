#!/bin/bash

# pdftk in.pdf cat 1-12 14-end output out1.pdf
# pdftk in1.pdf in2.pdf cat output out1.pdf
##pdftk $SOURCE cat 28    output $DADOS/Te-trago-da-minha-terra06.pdf ##canto de carimbo
##  $DADOS/Te-trago-da-minha-terra06.pdf \


src=/home/marcuswlima/Musician/github/_dados/o-baile-do-brega-romantico.pdf

#pdftk $src cat 68 69 /home/marcuswlima/Musician/github/_dados/001.pdf  68-69.pdf

pdfseparate /home/marcuswlima/Musician/github/_dados/o-baile-do-brega-romantico.pdf p%d.pdf
#pdfunite p output.pdf


pdfunite        \
p68.pdf p69.pdf \
p2.pdf p3.pdf p4.pdf p5.pdf p6.pdf p7.pdf p8.pdf p9.pdf p10.pdf p11.pdf p12.pdf p13.pdf p14.pdf  \
p15.pdf p16.pdf p17.pdf p18.pdf p19.pdf p20.pdf p21.pdf p22.pdf p23.pdf p24.pdf p25.pdf  \
p28.pdf p29.pdf p30.pdf p31.pdf p86.pdf p87.pdf p32.pdf p33.pdf p34.pdf p35.pdf p36.pdf p37.pdf p38.pdf p39.pdf p40.pdf \
p41.pdf p42.pdf p43.pdf p44.pdf p45.pdf p46.pdf p47.pdf p48.pdf p49.pdf p50.pdf p51.pdf p52.pdf p53.pdf p84.pdf p85.pdf \
p56.pdf p57.pdf p58.pdf p59.pdf p70.pdf p71.pdf p72.pdf p73.pdf p60.pdf p61.pdf p80.pdf p81.pdf \
p45.pdf p46.pdf p54.pdf p55.pdf \
output.pdf

pdfunite        \
p84.pdf p85.pdf \
/home/marcuswlima/Musician/github/_dados/warilow.pdf


pdfunite        \
p49.pdf \
/home/marcuswlima/Musician/github/_dados/amor-amor.pdf

rm *.pdf

