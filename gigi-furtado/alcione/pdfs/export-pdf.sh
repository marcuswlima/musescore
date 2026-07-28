pdf="LAGUIDIBA_BASE-1.pdf"

## estranha-loucura
pdftk $pdf cat 1-2 output estranha-loucura.pdf

## pode-esperar
pdftk $pdf cat 3 output pode-esperar.pdf

## menino-sem-juizo
pdftk $pdf cat 4 output menino-sem-juizo.pdf

## primo-do-jazz
#pdftk $pdf cat 11 output primo-do-jazz.pdf

## primo-do-jazz
#pdftk $pdf cat 6 output gostoso-veneno.pdf

## gatoro-maroto
pdftk $pdf cat 8-9 output gatoro-maroto.pdf

## faz-um-loucura-por-mim
#mscore "../gigi-canta-alcione.mscz" -o faz-um-loucura-por-mim.pdf
#pdftk faz-um-loucura-por-mim.pdf cat 1-2 output faz-um-loucura-por-mim2.pdf

## rio-antigo
#pdftk $pdf cat 14 output rio-antigo.pdf

## ilha-de-mare
#pdftk $pdf cat 17 output ilha-de-mare.pdf

## figa-guine
#pdftk $pdf cat 18 output figa-guine.pdf



## Juntar
#pdftk                       \
#estranha-loucura.pdf  \
#pode-esperar.pdf               \
#menino-sem-juizo.pdf     \
#primo-do-jazz.pdf   \
#gostoso-veneno.pdf \
#gatoro-maroto.pdf \
#faz-um-loucura-por-mim2.pdf \
#rio-antigo.pdf \
#ilha-de-mare.pdf \
#figa-guine.pdf \ 
#cat output gigi-furtado-alcione.pdf

pdftk \
estranha-loucura.pdf \
pode-esperar.pdf               \
menino-sem-juizo.pdf     \
primo-do-jazz.pdf   \
#gostoso-veneno.pdf \
#gatoro-maroto.pdf \
#faz-um-loucura-por-mim2.pdf \
#rio-antigo.pdf \
#ilha-de-mare.pdf \
#figa-guine.pdf \ 
cat output gigi-furtado-alcione.pdf