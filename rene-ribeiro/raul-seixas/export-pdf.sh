pdf="pdfs/_rene-ribeiro-raul-seixas.pdf"

#Exportar
#mscore rene-ribeiro-raul-seixas.mscx -o saida.pdf 2>/dev/null
#mscore rene-ribeiro-raul-seixas.mscx --export-to=saida.pdf 2>/dev/null


## meu-amigo-pedro
pdf1=pdfs/meu-amigo-pedro.pdf
pdftk $pdf cat 2-3 output $pdf1

pdf2=pdfs/ouro-de-tolo.pdf
pdftk $pdf cat 4 output $pdf2

pdf3=pdfs/eu-nasci.pdf
pdftk $pdf cat 5-7 output $pdf3

pdf4=pdfs/sociedade-alternativa.pdf
pdftk $pdf cat 10 output $pdf4

pdf5=pdfs/mosca-na-sopa.pdf
pdftk $pdf cat 11-12 output $pdf5

pdf6=pdfs/al-capone.pdf
pdftk $pdf cat 13-14 output $pdf6

pdf7=pdfs/LET-ME-SING.pdf
#pdftk $pdf cat 19 output $pdf10

pdf8="pdfs/MALUCO-BELEZA.pdf"

pdf9=pdfs/o-trem.pdf
pdftk $pdf cat 15-16 output $pdf9

pdf10=pdfs/maca.pdf
pdftk $pdf cat 17 output $pdf10

pdf11=pdfs/vovo.pdf
pdftk $pdf cat 20 output $pdf11

pdf12=pdfs/abete.pdf
pdftk $pdf cat 23 output $pdf12

pdf13=pdfs/gita.pdf
pdftk $pdf cat 24-25 output $pdf13

pdf14=pdfs/capin.pdf
pdftk $pdf cat 26 output $pdf14

pdf15=pdfs/medo.pdf
pdftk $pdf cat 27 output $pdf15

pdf16=pdfs/terra-parou.pdf
pdftk $pdf cat 28-29 output $pdf16

pdf17=pdfs/TENTE-OUTRA-VEZ.pdf

pdf18=pdfs/super.pdf
pdftk $pdf cat 21-22 output $pdf18

pdf19=pdfs/METAMORFOSE-AMBULANTE.pdf
pdftk $pdf cat 30-31 output $pdf19

pdf20=pdfs/ALUGA-SE.pdf

pdf21=pdfs/CARIMBADOR-MALUCO.pdf

pdf22=pdfs/COWBOY-FORA-DA-LEI.pdf


####-----------------------------------

#pdftk $pdf cat 18 output $pdf9


## Juntar
pdftk \
$pdf1 \
$pdf2 \
$pdf3 \
$pdf4 \
$pdf5 \
$pdf6 \
$pdf7 \
$pdf8 \
$pdf9 \
$pdf10 \
$pdf11 \
$pdf12 \
$pdf13 \
$pdf14 \
$pdf15 \
$pdf16 \
$pdf17 \
$pdf18 \
$pdf19 \
$pdf20 \
$pdf21 \
$pdf22 \
cat output pdfs/rene-ribeiro-raul-seixas.pdf

