aa="pdfs/amor-amor.pdf"
dadm="pdfs/da-amazonia-do-mundo.pdf"
resultado="pdfs/treatro-municipls pal-ananindeua-amor-amor.pdf"

rm -rvf pdfs/*

#Exportar
mscore amor-amor.mscx -o $aa
mscore ../da-amazonia-do-mundo/Da\ Amazônia\,\ do\ Mundo.mscx -o $dadm


pdf5=pdfs/descobri.pdf
pdftk $dadm cat 25-26 output $pdf5


### Juntar
pdftk  \
$aa    \
$pdf5  \
cat output $resultado




