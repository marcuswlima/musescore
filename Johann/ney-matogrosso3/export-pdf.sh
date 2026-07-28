pdf="pdfs/saida.pdf"

#Exportar
mscore "johann-ney-matogrosso.mscx" -o $pdf

## amor
pdftk $pdf cat 4 output pdfs/amor.pdf

## flores-astrais
pdftk $pdf cat 16 output pdfs/flores-astrais.pdf

## mulher-barriguda
pdftk $pdf cat 1-2 output pdfs/mulher-barriguda.pdf

## Juntar
pdftk                       \
../ney-matogrosso2/VÔO.pdf  \
pdfs/amor.pdf               \
pdfs/flores-astrais.pdf     \
pdfs/mulher-barriguda.pdf   \
cat output pdfs/johann-ney-mato-grosso.pdf

