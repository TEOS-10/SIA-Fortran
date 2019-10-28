#!/bin/bash

F90=gfortran
#libdir=/home/dwright/IAPWS/TEOS10-0.0.4/SIA_library
libdir=/home/Paul/SIA_11may17
 
${F90} -c ${libdir}/Constants_0.F90 
${F90} -c ${libdir}/Maths_0.F90
${F90} -c ${libdir}/Convert_0.F90
${F90} -c ${libdir}/Flu_1.F90
${F90} -c ${libdir}/Ice_1.F90
${F90} -c ${libdir}/Sal_1.F90
${F90} -c ${libdir}/Air_1.F90

${F90} -c ${libdir}/Flu_2.F90
${F90} -c ${libdir}/Ice_2.F90
${F90} -c ${libdir}/Sal_2.F90
${F90} -c ${libdir}/Air_2.F90

${F90} -c ${libdir}/Flu_3a.F90
${F90} -c ${libdir}/Flu_3b.F90
${F90} -c ${libdir}/Sea_3a.F90
${F90} -c ${libdir}/Sea_3b.F90
${F90} -c ${libdir}/Sea_3c.F90
${F90} -c ${libdir}/Sea_3d.F90
${F90} -c ${libdir}/Air_3a.F90
${F90} -c ${libdir}/Air_3b.F90
${F90} -c ${libdir}/Air_3c.F90

${F90} -c ${libdir}/Liq_Vap_4.F90
${F90} -c ${libdir}/Ice_Vap_4.F90
${F90} -c ${libdir}/Ice_Liq_4.F90
${F90} -c ${libdir}/Liq_Ice_Air_4.F90
${F90} -c ${libdir}/Sea_Vap_4.F90
${F90} -c ${libdir}/Sea_Liq_4.F90
${F90} -c ${libdir}/Sea_Ice_4.F90
${F90} -c ${libdir}/Sea_Ice_Vap_4.F90
${F90} -c ${libdir}/Liq_Air_4a.F90
${F90} -c ${libdir}/Sea_Air_4.F90

${F90} -c ${libdir}/Liq_Air_4a.F90
${F90} -c ${libdir}/Liq_Air_4b.F90
${F90} -c ${libdir}/Liq_Air_4c.F90
${F90} -c ${libdir}/Ice_Air_4a.F90
${F90} -c ${libdir}/Ice_Air_4b.F90
${F90} -c ${libdir}/Ice_Air_4c.F90

${F90} -c ${libdir}/Flu_IF97_5.F90
${F90} -c ${libdir}/Ice_Flu_5.F90
${F90} -c ${libdir}/Liq_F03_5.F90
${F90} -c ${libdir}/Sea_5a.F90
${F90} -c ${libdir}/GSW_Library_5.F90
${F90} -c ${libdir}/Convert_5.F90
${F90} -c ${libdir}/Air_5.F90
${F90} -c ${libdir}/OS2008_5.F90

${F90} -c ${libdir}/Values_Air.F90
${F90} -c ${libdir}/Values_Flu.F90
${F90} -c ${libdir}/Values_Mix.F90
${F90} -c ${libdir}/Values_Ice.F90
${F90} -c ${libdir}/Values_CNV.F90
${F90} -c ${libdir}/Values_GSW.F90
${F90} -c ${libdir}/Values_Sal.F90
${F90} -c ${libdir}/Values_Sea.F90


${F90} -c Example_Calculations.F90 

${F90} -o Example_Calculations Constants_0.o Flu_1.o Flu_2.o Ice_1.o Ice_2.o Air_1.o Air_2.o Sal_1.o Sal_2.o Convert_0.o Maths_0.o Flu_3a.o Sea_3a.o Example_Calculations.o   


${F90} -c Chk_Tables_Air.F90 
${F90} -o Chk_Tables_Air Constants_0.o Convert_0.o Maths_0.o Air_1.o Flu_1.o Air_2.o Air_3a.o Air_3b.o Chk_Tables_Air.o   

${F90} -c Chk_Tables_F03.F90 
${F90} -o Chk_Tables_F03 Constants_0.o Liq_F03_5.o Chk_Tables_F03.o   

${F90} -c Chk_Tables_IF97.F90 
${F90} -o Chk_Tables_IF97 Constants_0.o Flu_1.o Flu_IF97_5.o Chk_Tables_IF97.o   

${F90} -c Chk_Tables_OS2008.F90 
${F90} -o Chk_Tables_OS2008 Constants_0.o Flu_1.o Flu_2.o Convert_0.o Maths_0.o Flu_3a.o Liq_Vap_4.o Ice_1.o Sal_1.o Sal_2.o OS2008_5.o Chk_Tables_OS2008.o   

${F90} -c Chk_Tables_All.F90 
${F90} -o Chk_Tables_All Constants_0.o Flu_1.o Flu_2.o Convert_0.o Maths_0.o Flu_3a.o Liq_Vap_4.o Ice_1.o Sal_1.o Sal_2.o OS2008_5.o Flu_IF97_5.o Liq_F03_5.o Air_1.o Air_2.o Air_3a.o Air_3b.o Chk_Tables_All.o   

${F90} -c Chk_Values_Air.F90 
${F90} -o Chk_Values_Air Constants_0.o Convert_0.o Maths_0.o Air_1.o Flu_1.o Air_2.o Air_3a.o Air_3b.o Flu_3a.o Air_3c.o Flu_2.o Liq_Vap_4.o Liq_Air_4a.o Air_5.o Chk_Values_Air.o  Values_Air.o

${F90} -c Chk_Values_CNV.F90 
${F90} -o Chk_Values_CNV Constants_0.o Convert_0.o Maths_0.o Liq_F03_5.o Flu_1.o Flu_3a.o Sal_1.o Sal_2.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_5a.o GSW_Library_5.o Convert_5.o Chk_Values_CNV.o Values_CNV.o   

${F90} -c Chk_Values_Flu.F90 
${F90} -o Chk_Values_Flu Constants_0.o Convert_0.o Flu_1.o Flu_2.o Maths_0.o Flu_3a.o Flu_3b.o Liq_F03_5.o Chk_Values_Flu.o Values_Flu.o   

${F90} -c Chk_Values_GSW.F90 
${F90} -o Chk_Values_GSW Constants_0.o Convert_0.o Maths_0.o Sal_1.o Sal_2.o Liq_F03_5.o Flu_1.o Flu_3a.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_5a.o GSW_Library_5.o Convert_5.o Chk_Values_GSW.o Values_GSW.o   

${F90} -c Chk_Values_Ice.F90 
${F90} -o Chk_Values_Ice Constants_0.o Convert_0.o Ice_1.o Ice_2.o Chk_Values_Ice.o Values_Ice.o   

${F90} -c Chk_Values_Sal.F90 
${F90} -o Chk_Values_Sal Constants_0.o Convert_0.o Sal_1.o Sal_2.o Chk_Values_Sal.o Values_Sal.o   

${F90} -c Chk_Values_Sea.F90 
${F90} -o Chk_Values_Sea Constants_0.o Convert_0.o Sal_1.o Sal_2.o Flu_1.o Flu_2.o Maths_0.o Flu_3a.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_3d.o Sea_5a.o Chk_Values_Sea.o Values_Sea.o   

${F90} -c Chk_Values_Mix.F90 
${F90} -o Chk_Values_Mix Constants_0.o Maths_0.o Convert_0.o Air_1.o Flu_1.o Ice_1.o Sal_1.o Air_2.o Flu_2.o Ice_2.o Sal_2.o Flu_3a.o Flu_3b.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_3d.o Ice_Liq_4.o Ice_Vap_4.o Liq_Vap_4.o Air_3a.o Air_3b.o Liq_Air_4a.o Sea_Air_4.o Sea_Ice_4.o Sea_Liq_4.o Sea_Vap_4.o Liq_Ice_Air_4.o Sea_Ice_Vap_4.o Ice_Air_4a.o Ice_Air_4b.o Ice_Air_4c.o Liq_Air_4b.o Liq_Air_4c.o Ice_Flu_5.o Chk_Values_Mix.o Values_Mix.o   

${F90} -c Chk_Values_All.F90 
${F90} -o Chk_Values_All Constants_0.o Maths_0.o Convert_0.o Convert_5.o Air_1.o Flu_1.o Ice_1.o Sal_1.o Air_2.o Flu_2.o Ice_2.o Sal_2.o Flu_3a.o Flu_3b.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_3d.o Ice_Liq_4.o Ice_Vap_4.o Liq_Vap_4.o Air_3a.o Air_3b.o Air_3c.o Liq_Air_4a.o Sea_Air_4.o Sea_Ice_4.o Sea_Liq_4.o Sea_Vap_4.o Liq_Ice_Air_4.o Sea_Ice_Vap_4.o Ice_Air_4a.o Ice_Air_4b.o Ice_Air_4c.o Liq_Air_4b.o Liq_Air_4c.o Ice_Flu_5.o Air_5.o Liq_F03_5.o Sea_5a.o GSW_Library_5.o Values_Mix.o Values_Sea.o Values_Sal.o Values_Ice.o Values_Flu.o Values_CNV.o Values_GSW.o Values_Air.o Chk_Values_All.o

