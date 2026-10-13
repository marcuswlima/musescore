#############################
# Variaves
#############################

quando="20261017"
artista=johann
titulo=ney-matogrosso
local="bar-municipal"
pasta="pdfs"
resultado=pdfs/$quando-$artista-$titulo-$local.pdf

echo ''
echo '#############################'
echo '# Exportando...'
echo '#############################'
echo ''
ney=$pasta/johann-ney-matogrosso.pdf
mscore ney-matogrosso3/johann-ney-matogrosso.mscx -o $resultado


echo ''
echo '#############################'
echo '# Separando...'
echo '#############################'
echo ''

#pdf1=pdfs/NOITE-LUIZIDIA.pdf
#
#
#pdf3=pdfs/Explode-Coração.pdf 
#
### bricar-de-viver
#pdf4=pdfs/bricar-de-viver.pdf
#pdftk $mb80anos cat 7-8 output $pdf4
#
### ta-combinado
#pdf5=pdfs/ta-combinado.pdf
#pdftk $mb80anos cat 3-4 output $pdf5
#
### chero-de-amor
#pdf6=pdfs/chero-de-amor.pdf
#pdftk $mb80anos cat 2 output $pdf6
#
### o-que-queres
#pdf7=pdfs/o-que-queres.pdf
#pdftk $mb80anos cat 13 output $pdf7
#
### olhos-nos-olhos.pdf
#pdf9=pdfs/olhos-nos-olhos.pdf
#pdftk $mb80anos cat 9    output $pdf9
#
### fera-ferida.pdf
#pdf11=pdfs/fera-ferida.pdf
#pdftk $mb80anos cat 10 output $pdf11
#
### cancoes-fez-pra-mim.pdf
#pdf12=pdfs/cancoes-fez-pra-mim.pdf
#pdftk $mb80anos cat 11-12 output $pdf12
#
### mel
#pdf13=pdfs/mel.pdf
#pdftk $mb80anos cat 5-6 output $pdf13
#
### tigresa
#pdf14=pdfs/tigresa.pdf
#pdftk $ka cat 2-3 output $pdf14

echo ''
echo '#############################'
echo '# Montando...'
echo '#############################'
echo ''
#pdftk  \
#$pdf4  \
#$pdf5  \
#$pdf6  \
#$pdf7  \
#$pdf9  \
#$pdf11 \
#$pdf13 \
#$pdf12 \
#$pdf14 \
#cat output $resultado


echo ''
echo '#############################'
echo '# Enviando...'
echo '#############################'
echo ''
bt-device -l
bluetooth-sendto --device=D8:08:31:71:15:A3 $resultado


