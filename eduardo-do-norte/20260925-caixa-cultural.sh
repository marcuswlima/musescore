#############################'
# Repertorio
#############################'

# 1. Carimbó do Mundiado
# 2. ⁠Quero Ver
# 3. ⁠Marambaia
# 4. ⁠Igarapéls
# 5. ⁠Amazônida 
# 6. ⁠Erundina (Lambada Social Club)
# 7. ⁠Lamba Funk (Lambada Social Club)
# 8. ⁠Cheiro de Flor
# 9. ⁠Descobri 
# 10. ⁠Bem te vi (Nilson Chaves)
# 11. ⁠outra do Nilson solo
# 12. ⁠Dois Botos/ Negro Sol
# 13. ⁠Chibé
# 14. ⁠Deixa de Leseira
# 15. ⁠Cantador da Lua
# 16. ⁠Cravo e Canela (Sandrinha Eletrizante)
# 17. ⁠Arreda Arreda



#############################'
# Parametros
#############################'

artista=eduardo-du-norte
quando="2026-Set-25"
local="caixa-cultural"
pasta="pdfs"
resultado=$pasta/$artista-$quando-$local.pdf

echo ''
echo '#############################'
echo '# gerando....'
echo '#############################'
echo ''
varios=pdfs/varios.pdf
dadm=pdfs/dadm.pdf

mscore varios/varios.mscx                             -o $varios
mscore da-amazonia-do-mundo/da-amazonia-do-mundo.mscx -o $dadm


echo ''
echo '#############################'
echo '# Separando....'
echo '#############################'
echo ''
m01=pdfs/carimbo-mundiado.pdf
pdftk $varios cat 2-4 output $m01

m02=pdfs/quero-ver.pdf
pdftk $varios cat 5-7 output $m02

m04=pdfs/igarape.pdf
pdftk $dadm cat 2-3 output $m04

m05=pdfs/amazonida.pdf
pdftk $varios cat 12-13 output $m05

m08=pdfs/cheiro-de-flor.pdf
pdftk $varios cat 14-15 output $m08

m09=pdfs/descobri.pdf
pdftk $dadm cat 12 output $m09

m10=pdfs/ben-te-vi.pdf
pdftk $dadm cat 4-5 output $m10

m12=pdfs/lundus.pdf
pdftk $varios cat 18-19 output $m12

m13=pdfs/chibe.pdf
pdftk $dadm cat 10 output $m13

m14=pdfs/leseira.pdf
pdftk $varios cat 10-11 output $m14

m15=pdfs/camntador-lua.pdf
pdftk $varios cat 24-27 output $m15

# 16. ⁠Cravo e Canela (Sandrinha Eletrizante)
m16=pdfs/cravo-lua.pdf
pdftk $varios cat 36-38 output $m16

# 17. ⁠Arreda Arreda
m17=pdfs/arreda-arreda.pdf
pdftk $varios cat 39 output $m17

echo ''
echo '##########################################'
echo '## Merge Final'
echo '##########################################'
echo ''

pdftk \
$m01  \
$m02  \
$m04  \
$m05  \
$m08  \
$m09  \
$m10  \
$m12  \
$m13  \  
$m14  \
$m15  \
$m16  \
$m17  \
cat output $resultado

echo ''
echo '#############################'
echo '# Enviando...'
echo '#############################'
echo ''
#bt-device -l
bluetooth-sendto --device=D8:08:31:71:15:A3 $resultado


