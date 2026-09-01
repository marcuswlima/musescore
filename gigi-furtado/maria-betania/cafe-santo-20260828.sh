pdf="pdfs/maria-betania-raw.pdf"

#Exportar
mscore gigi-furtado-maria-betania.mscx -o $pdf


pdf1=pdfs/NOITE-LUIZIDIA.pdf

pdf2=pdfs/TENHA-CALMA.pdf

pdf3=pdfs/Explode-Coração.pdf 

## bricar-de-viver
pdf4=pdfs/bricar-de-viver.pdf
pdftk $pdf cat 5-6 output $pdf4

## ta-combinado
pdf5=pdfs/ta-combinado.pdf
pdftk $pdf cat 2 output $pdf5

## chero-de-amor
pdf6=pdfs/chero-de-amor.pdf
pdftk $pdf cat 1 output $pdf6

## olhos-nos-olhos.pdf
pdf9=pdfs/olhos-nos-olhos.pdf
pdftk $pdf cat 7 output $pdf9

## fera-ferida.pdf
pdf11=pdfs/fera-ferida.pdf

## mel
pdf13=pdfs/mel.pdf
pdftk $pdf cat 3-4 output $pdf13

## tigresa
mscore ../../kataryna-avila/20260130-Porto-ver-o-rio/katarina-avila-porto-ver-o-rio.mscx  -o pdfs/katarina-avila-porto-ver-o-rio.pdf
pdf14=pdfs/tigresa.pdf
pdftk pdfs/katarina-avila-porto-ver-o-rio.pdf cat 2-3 output $pdf14

### Juntar
pdftk \
$pdf1 \
$pdf3 \
$pdf4 \
$pdf5 \
$pdf6 \
$pdf9 \
$pdf11 \
$pdf13 \
$pdf14 \
cat output pdfs/gigi-furtado-maria-betania-80-anos.pdf

