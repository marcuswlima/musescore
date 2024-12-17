#!/bin/bash

# pdftk in.pdf cat 1-12 14-end output out1.pdf
# pdftk in1.pdf in2.pdf cat output out1.pdf
##pdftk $SOURCE cat 28    output $DADOS/Te-trago-da-minha-terra06.pdf ##canto de carimbo

DADOS=../../_dados/OSTP

pdftk ../../_dados/OSTP/drive-download-20241006T012310Z-001/Chaves.Nilson-Olho-de-boto/01-Olho-de-Boto-PARTES.pdf                           cat 30    output $DADOS/nap01.pdf 
pdftk ../../_dados/OSTP/drive-download-20241006T012310Z-001/Waldemar\ Henrique\ -\ Matinta\ Pêrera/01\ -\ Matinta\ Perêra\ -\ PARTES.pdf    cat 25    output $DADOS/nap02.pdf 
pdftk ../../_dados/OSTP/drive-download-20241006T012310Z-001/Waldemar\ Henrique\ -\ Tambatajá/Tamba-Tajá\ -\ PARTES.pdf                      cat 13    output $DADOS/nap03.pdf 
pdftk ../../_dados/OSTP/drive-download-20241006T012310Z-001/Waldemar\ Henrique\ -\ Valsinha\ do\ marajó/Valsinha\ do\ Marajó\ -\ PARTES.pdf cat 19 20 output $DADOS/nap04.pdf 

pdftk                                                                                                                                                  \
  $DADOS/nap01.pdf                                                                                                                                     \
  ../../_dados/OSTP/drive-download-20241006T012310Z-001/Dona\ Onete\ -\ No\ meio\ do\ Pitiu\ -\ Arranjo\ jõao\ marcos\ palheta/17\ -\ Contrabaixo.pdf  \
  ../../_dados/OSTP/drive-download-20241006T012310Z-001/Proença.\ Edyr\ -\ Bom\ dia\ Belém/26\ -\ Bom\ dia\,\ Belém\ -\ Contrabaixo.pdf                \
  ../../_dados/OSTP/drive-download-20241006T012310Z-001/Waldemar\ Henrique\ -\ Foi\ boto\ sinhá/Foi\ Boto\ Sinhá-Contrabaixo\ -\ Double\ Bass.pdf      \
  $DADOS/nap02.pdf                                                                                                                                     \
  ../../_dados/OSTP/drive-download-20241006T012310Z-001/Waldemar\ Henrique\ -\ Primavera/12\ -\ PRIMAVERA_Contrabaixo\ -\ Double\ Bass.pdf             \
  $DADOS/nap03.pdf                                                                                                                                     \
  ../../_dados/OSTP/drive-download-20241006T012310Z-001/Waldemar\ Henrique\ -\ Uirapuru/26\ -\ Uirapuru\ -\ Contrabaixo.pdf                            \
  $DADOS/nap04.pdf                                                                                                                                     \
    cat output $DADOS/Noite-artispa-paraense.pdf 
