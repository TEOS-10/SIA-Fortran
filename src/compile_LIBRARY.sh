#!/bin/bash

#This script does nothing but compile each of the routines in the IAPWS Library.

gfortran -c Constants_0.F90 
gfortran -c Maths_0.F90
gfortran -c Convert_0.F90
gfortran -c Flu_1.F90
gfortran -c Ice_1.F90
gfortran -c Sal_1.F90
gfortran -c Air_1.F90

gfortran -c Flu_2.F90
gfortran -c Ice_2.F90
gfortran -c Sal_2.F90
gfortran -c Air_2.F90

gfortran -c Flu_3a.F90
gfortran -c Flu_3b.F90
gfortran -c Sea_3a.F90
gfortran -c Sea_3b.F90
gfortran -c Sea_3c.F90
gfortran -c Sea_3d.F90
gfortran -c Air_3a.F90
gfortran -c Air_3b.F90
gfortran -c Air_3c.F90

gfortran -c Liq_Vap_4.F90
gfortran -c Ice_Vap_4.F90
gfortran -c Ice_Liq_4.F90
gfortran -c Liq_Ice_Air_4.F90
gfortran -c Sea_Vap_4.F90
gfortran -c Sea_Liq_4.F90
gfortran -c Sea_Ice_4.F90
gfortran -c Sea_Ice_Vap_4.F90
gfortran -c Liq_Air_4a.F90 Sea_Air_4.F90

gfortran -c Liq_Air_4a.F90
gfortran -c Liq_Air_4b.F90
gfortran -c Liq_Air_4c.F90
gfortran -c Ice_Air_4a.F90
gfortran -c Ice_Air_4b.F90
gfortran -c Ice_Air_4c.F90

gfortran -c Flu_IF97_5.F90
gfortran -c Ice_Flu_5.F90
gfortran -c Liq_F03_5.F90
gfortran -c Sea_5a.F90
gfortran -c GSW_Library_5.F90
gfortran -c Convert_5.F90
gfortran -c Air_5.F90
gfortran -c OS2008_5.F90

gfortran -c Values_Air.F90 
gfortran -c Values_CNV.F90 
gfortran -c Values_Flu.F90 
gfortran -c Values_GSW.F90 
gfortran -c Values_Ice.F90 
gfortran -c Values_Sal.F90 
gfortran -c Values_Sea.F90 
gfortran -c Values_Mix.F90 

#rm -rf *.o *.mod a.out
