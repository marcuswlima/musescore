quando="20261107"
local="bar-municipal"
pasta="pdfs"
resultado=$pasta/$quando-$local-sabado.pdf

echo ''
echo '##############################'
echo '# Ever'
echo '###############################'
echo ''
#01- Borbulhas de Amor - C
#02- ⁠Evidencias - C 
#03- ⁠⁠Até que amanheça (Adilson Ramos) - E
#04- ⁠Amor amor (Magno) - Bm
#05- ⁠Minha amiga (Mauro Cotta) - D
#06- ⁠Conquista (Wanderley Andrade) - G
#07- Ao por do sol - C

jl=pdfs/jl.pdf
mscore ../juan-lennon/porto-ver-o-rio/ruan-lennon-porto-ver-o-rio.mscx  -o $jl


#03- ⁠⁠Até que amanheça (Adilson Ramos) - E
aqa=pdfs/aqa.pdf  
pdftk $jl cat 24-25 output $aqa

#04- ⁠Amor amor (Magno) - Bm
amoramor=pdfs/amor-amor.pdf  
pdftk $jl cat 43 output $amoramor

#05- ⁠Minha amiga (Mauro Cotta) - D
ma=pdfs/ma.pdf  
pdftk $jl cat 44 output $ma

conquista=pdfs/conquista.pdf  
pdftk $jl cat 22-23 output $conquista

aps=pdfs/aps.pdf  
pdftk $jl cat 45 output $aps


pdftk  \
$aqa  \
$amoramor \
$ma \
$conquista \
$aps \
cat output pdfs/everton.pdf


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
pdftk $ka cat 13-14 output $pa

pdftk  \
pdfs/Ney-Matogrosso-poema.pdf  \
pdfs/Rosana-O-Amor-e-o-Poder.pdf \
$fa \
$pa \
cat output pdfs/Johann.pdf

echo ''
echo '#############################'
echo '# Zete Santos'
echo '#############################'
echo ''
#1 - Não Deixa o Samba morrer - Si menor
#2 - Retalhos de cetim- Lá menor
#3 - Do jeito que a vida quer - Ré Menor
#4 - Me vira a cabeça- Fá sustenido Menor
#5 - Loba- Lá menor
#6 - Tiro ao Álvaro 
#7 - A volta por Cima - Mi Menor



echo ''
echo '#############################'
echo '# REPERTÓRIO - HELLEN SOUSA'
echo '#############################'
echo ''
#1. Fullgás – Marina Lima (Tom original: Bm)
#2. Garganta – Ana Carolina (Tom original: Gm)
#3. Malandragem – Cássia Eller (Tom original: Dm)
#4. Saúde – Rita Lee (Tom: A#)
#5. Bete Balanço – Barão Vermelho (Tom original: E)
#6. Uma Noite e meia – Marina Lima (Tom original: Bm)
#7. Olhos Coloridos – Sandra de Sá (Tom: Bm)


sa=pdfs/sa.pdf
mscore ../simone-almeida/por-elas-e-pra-elas/202412/por-elas-e-pra-elas.mscx  -o $sa
fulgas=pdfs/fulgas.pdf  
pdftk $sa cat 26-27 output $fulgas


echo ''
echo '##########################################'
echo '## Eduardo Du Norte'
echo '##########################################'
echo ''


#1. Amor Amor
#2. Monamour meu bem ma femme
#3. Ao pôr do sol
#4. tchau tchau amor
#5. Pecados de Adão 
#6. Ai Menina (Cm)
#7. No meio do Pitiú (Cm)

amoramor=pdfs/amor-amor.pdf  
pdftk $jl cat 43 output $amoramor

aps=pdfs/aps.pdf  
pdftk $jl cat 45 output $aps

tchautchau=pdfs/tchautchau.pdf
pdftk $jl cat 46-47 output $tchautchau


pdftk  \
$amoramor \
$aps \
$tchautchau \
cat output pdfs/eduardo.pdf


echo ''
echo '##########################################'
echo '## Izabel Ramos'
echo '##########################################'
echo ''

presentimentos=pdfs/presentimentos.pdf  
pdftk $jl cat 37-38 output $presentimentos



echo ''
echo '##########################################'
echo '## Merge Final'
echo '##########################################'
echo ''

pdftk            \
pdfs/everton.pdf \
pdfs/Johann.pdf  \
$fulgas \
pdfs/eduardo.pdf  \
$presentimentos \
cat output $resultado

echo ''
echo '#############################'
echo '# Enviando...'
echo '#############################'
echo ''
bt-device -l
bluetooth-sendto --device=D8:08:31:71:15:A3 $resultado

