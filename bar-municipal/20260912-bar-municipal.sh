quando="20260912"
local="bar-municipal"
pasta="pdfs"
resultado=$pasta/$quando-$local-sabado.pdf

echo ''
echo '#############################'
echo '# REPERTÓRIO - HELLEN SOUSA'
echo '#############################'
echo ''
#1. Jura Secreta - Zélia Duncan (Tom original: D)
#2. Vambora - Adriana Calcanhotto (Tom: A)
#3. Amor, Meu Grande Amor - Angela Ro Ro (Tom: E)
#4. Vapor Barato - Gal Costa (Tom: Cm)
#5. Luz dos Olhos - Cássia Eller (Tom original: Am)
#6. Gatas Extraordinárias - Cássia Eller (Tom original: E)
#7. Garganta - Ana Carolina (Tom original: Gm)
#8. Fullgás - Marina Lima (Tom original: Bm)
#9. Uma Noite e ½ - Marina Lima (Tom original: Bm)
#10. Malandragem - Cássia Eller (Tom original: Dm)

artista1=pdfs/hellen.pdf

sa=pdfs/sa.pdf
mscore ../simone-almeida/por-elas-e-pra-elas/202412/por-elas-e-pra-elas.mscx  -o $sa
fulgas=pdfs/fulgas.pdf  
pdftk $sa cat 26-27 output $fulgas

echo ''
echo '##############################'
echo '# Lista Músicas - Ever'
echo '###############################'
echo ''
#- ⁠Volta pra mim (Roupa Nova) - C
#- ⁠Evidências (Chitãozinho e Xororó) - C
#- ⁠Clareou (Diogo Nogueira) G
#- ⁠Tá Escrito (Xandy de Pilares) - F
#- ⁠Fulminante (Muzinho) - D
#- ⁠Conquista (Wanderley Andrade) - G
#- ⁠Até que amanheça (Adilson Ramos) - E
#- ⁠Minha amiga (Mauro Cotta) - D
#- ⁠Ao por do sol (Teddy Max) - C
#- ⁠Amor amor (Magno) - Bm

clareou=pdfs/CLAREOU.pdf
jl=pdfs/jl.pdf
mscore ../juan-lennon/porto-ver-o-rio/ruan-lennon-porto-ver-o-rio.mscx  -o $jl

conquista=pdfs/conquista.pdf  
pdftk $jl cat 22-23 output $conquista

ma=pdfs/minha-amiga.pdf  
pdftk $jl cat 44 output $ma

aps=pdfs/aps.pdf  
pdftk $jl cat 45 output $aps

amoramor=pdfs/amor-amor.pdf  
pdftk $jl cat 43 output $amoramor


echo ''
echo '##############################'
echo '# rene Ribeiro'
echo '###############################'
rr=pdfs/rr.pdf

mscore ../rene-ribeiro/raul-seixas/rene-ribeiro-raul-seixas.mscx  -o $rr

pedro=pdfs/pedro.pdf  
pdftk $rr cat 2-3 output $pedro

aluga=pdfs/ALUGA-SE.pdf  

metamorfose=pdfs/metamorfose.pdf  
pdftk $rr cat 30-31 output $metamorfose

medo=pdfs/medo.pdf  
pdftk $rr cat 27 output $medo

maluco=pdfs/MALUCO-BELEZA.pdf  

rockinbossa=pdfs/rockinbossa.pdf
mscore ../kataryna-avila/RockInBossa/rockinbossa.mscx -o $rockinbossa
exagerado=pdfs/exaregado.pdf  
pdftk $rockinbossa cat 5-6 output $exagerado

carimbador=pdfs/CARIMBADOR-MALUCO.pdf  
cowboy=pdfs/COWBOY-FORA-DA-LEI.pdf  

echo ''
echo '##########################################'
echo '## Johann'
echo '##########################################'
echo ''
#1. Sangue latino - Ney Matogrosso - D
#2. Poema - Ney Matogrosso - C
#3. O amor e o poder - Rosana - F
#4. Came e case - Ângela Roro - Am
#5. Foi assim - Fafá de Belém  - Cm
#6. Pecados de Adão - Eloi Iglesias - B
#7. Pauapixuna - Fafá de Belém  - Bm
#8. Porto Caribe - Lucinha Bastos  - G
#9. Você me vira a cabeça - Alcione F#m
#10. Juízo final - Alcione - Cm

libreoffice --headless --convert-to pdf Ney-Matogrosso-poema.txt --outdir pdfs
libreoffice --headless --convert-to pdf Rosana-O-Amor-e-o-Poder.txt --outdir pdfs


ka=pdfs/ka.pdf
mscore ../kataryna-avila/porto-ver-o-rio/kataryna-avila-porto-ver-o-rio.mscx  -o $ka
## fa.df
fa=pdfs/fa.pdf
pdftk $ka cat 8-9 output $fa

pa=pdfs/pa.pdf
pdftk $ka cat 13 output $pa


echo ''
echo '##########################################'
echo '## Eduardo Du Norte'
echo '##########################################'
echo ''

artista6=pdfs/eduardo-du-norte.pdf

caprichos=pdfs/caprichos.pdf
pdftk $jl cat 4-5 output $caprichos

tchautchau=pdfs/tchautchau.pdf
pdftk $jl cat 46-47 output $tchautchau

pdftk       \
$caprichos  \
$tchautchau \ 
cat output $artista6

echo ''
echo '##########################################'
echo '## Merge Final'
echo '##########################################'
echo ''

#pdftk                            \
#$fulgas  \
#$clareou \
#$conquista \
#$ma \
#$aps \
#$amoramor \
#$pedro \
#$aluga \
#$metamorfose \
#$medo \
#$maluco \
#$exagerado \
#$carimbador \
#$cowboy \
#pdfs/Ney-Matogrosso-poema.pdf    \
#pdfs/Rosana-O-Amor-e-o-Poder.pdf \
#$fa                              \
#$pa                              \
#$caprichos \
#$tchautchau \ 
#cat output $resultado
#
##ls -la $resultado

