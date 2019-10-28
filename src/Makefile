# ------------------Macro-Defs---------------------
F90=gfortran 

# -------------------End-macro-Defs---------------------------

# Here is the link step 
All:Constants_0.o Convert_0.o Maths_0.o Flu_1.o Ice_1.o Sal_1.o Air_1.o Flu_2.o Ice_2.o Sal_2.o Air_2.o Flu_3a.o Sea_3a.o Air_3a.o Flu_3b.o Air_3b.o Sea_3b.o Sea_3c.o Air_3c.o Sea_3d.o Ice_Liq_4.o Ice_Vap_4.o Liq_Vap_4.o Liq_Air_4a.o Sea_Air_4.o Sea_Liq_4.o Sea_Vap_4.o Sea_Ice_4.o Sea_Ice_Vap_4.o Liq_Ice_Air_4.o Ice_Air_4a.o Ice_Air_4b.o Liq_Air_4b.o Ice_Air_4c.o Liq_Air_4c.o Ice_Flu_5.o Air_5.o Convert_5.o Flu_IF97_5.o Liq_F03_5.o Sea_5a.o GSW_Library_5.o OS2008_5.o Values_Air.o Values_CNV.o Values_Ice.o Values_Sal.o Values_Sea.o Values_Flu.o Values_GSW.o Values_Mix.o All.o 
	 $(F90) -o All Constants_0.o Convert_0.o Maths_0.o Flu_1.o Ice_1.o Sal_1.o Air_1.o Flu_2.o Ice_2.o Sal_2.o Air_2.o Flu_3a.o Sea_3a.o Air_3a.o Flu_3b.o Air_3b.o Sea_3b.o Sea_3c.o Air_3c.o Sea_3d.o Ice_Liq_4.o Ice_Vap_4.o Liq_Vap_4.o Liq_Air_4a.o Sea_Air_4.o Sea_Liq_4.o Sea_Vap_4.o Sea_Ice_4.o Sea_Ice_Vap_4.o Liq_Ice_Air_4.o Ice_Air_4a.o Ice_Air_4b.o Liq_Air_4b.o Ice_Air_4c.o Liq_Air_4c.o Ice_Flu_5.o Air_5.o Convert_5.o Flu_IF97_5.o Liq_F03_5.o Sea_5a.o GSW_Library_5.o OS2008_5.o Values_Air.o Values_CNV.o Values_Ice.o Values_Sal.o Values_Sea.o Values_Flu.o Values_GSW.o Values_Mix.o All.o   

# Here are the compile steps
 
Constants_0.o:./Constants_0.F90  
	 $(F90) -c ./Constants_0.F90 

Convert_0.o:./Convert_0.F90 Constants_0.o 
	 $(F90) -c ./Convert_0.F90 

Maths_0.o:./Maths_0.F90 Constants_0.o 
	 $(F90) -c ./Maths_0.F90 

Flu_1.o:./Flu_1.F90 Constants_0.o 
	 $(F90) -c ./Flu_1.F90 

Ice_1.o:./Ice_1.F90 Constants_0.o 
	 $(F90) -c ./Ice_1.F90 

Sal_1.o:./Sal_1.F90 Constants_0.o 
	 $(F90) -c ./Sal_1.F90 

Air_1.o:./Air_1.F90 Constants_0.o 
	 $(F90) -c ./Air_1.F90 

Flu_2.o:./Flu_2.F90 Constants_0.o Flu_1.o 
	 $(F90) -c ./Flu_2.F90 

Ice_2.o:./Ice_2.F90 Constants_0.o Ice_1.o 
	 $(F90) -c ./Ice_2.F90 

Sal_2.o:./Sal_2.F90 Constants_0.o Sal_1.o 
	 $(F90) -c ./Sal_2.F90 

Air_2.o:./Air_2.F90 Constants_0.o Air_1.o Flu_1.o 
	 $(F90) -c ./Air_2.F90 

Flu_3a.o:./Flu_3a.F90 Constants_0.o Convert_0.o Maths_0.o Flu_1.o 
	 $(F90) -c ./Flu_3a.F90 

Sea_3a.o:./Sea_3a.F90 Constants_0.o Sal_1.o Sal_2.o Flu_3a.o 
	 $(F90) -c ./Sea_3a.F90 

Air_3a.o:./Air_3a.F90 Constants_0.o Convert_0.o Maths_0.o Air_1.o Air_2.o 
	 $(F90) -c ./Air_3a.F90 

Flu_3b.o:./Flu_3b.F90 Constants_0.o Flu_2.o Flu_3a.o 
	 $(F90) -c ./Flu_3b.F90 

Air_3b.o:./Air_3b.F90 Constants_0.o Convert_0.o Air_1.o Air_2.o Air_3a.o 
	 $(F90) -c ./Air_3b.F90 

Sea_3b.o:./Sea_3b.F90 Constants_0.o Sal_2.o Flu_3a.o Sea_3a.o 
	 $(F90) -c ./Sea_3b.F90 

Sea_3c.o:./Sea_3c.F90 Constants_0.o Sea_3a.o Sea_3b.o 
	 $(F90) -c ./Sea_3c.F90 

Air_3c.o:./Air_3c.F90 Constants_0.o Convert_0.o Air_2.o Air_3a.o Air_3b.o 
	 $(F90) -c ./Air_3c.F90 

Sea_3d.o:./Sea_3d.F90 Constants_0.o Sal_2.o Flu_3a.o 
	 $(F90) -c ./Sea_3d.F90 

Ice_Liq_4.o:./Ice_Liq_4.F90 Constants_0.o Maths_0.o Flu_1.o Ice_1.o Flu_2.o Ice_2.o 
	 $(F90) -c ./Ice_Liq_4.F90 

Ice_Vap_4.o:./Ice_Vap_4.F90 Constants_0.o Maths_0.o Flu_1.o Ice_1.o Flu_2.o Ice_2.o 
	 $(F90) -c ./Ice_Vap_4.F90 

Liq_Vap_4.o:./Liq_Vap_4.F90 Constants_0.o Maths_0.o Flu_1.o Flu_2.o Flu_3a.o 
	 $(F90) -c ./Liq_Vap_4.F90 

Liq_Air_4a.o:./Liq_Air_4a.F90 Constants_0.o Convert_0.o Maths_0.o Air_1.o Flu_1.o Air_2.o Flu_2.o Air_3a.o Air_3b.o Flu_3a.o Liq_Vap_4.o 
	 $(F90) -c ./Liq_Air_4a.F90 

Sea_Air_4.o:./Sea_Air_4.F90 Constants_0.o Convert_0.o Maths_0.o Air_1.o Flu_1.o Sal_1.o Air_2.o Flu_2.o Sal_2.o Air_3a.o Air_3b.o Flu_3a.o Sea_3a.o Liq_Vap_4.o Liq_Air_4a.o 
	 $(F90) -c ./Sea_Air_4.F90 

Sea_Liq_4.o:./Sea_Liq_4.F90 Constants_0.o Flu_1.o Sal_1.o Flu_2.o Sal_2.o Flu_3a.o 
	 $(F90) -c ./Sea_Liq_4.F90 

Sea_Vap_4.o:./Sea_Vap_4.F90 Constants_0.o Maths_0.o Flu_1.o Sal_1.o Sal_2.o Flu_3a.o Flu_3b.o Sea_3a.o 
	 $(F90) -c ./Sea_Vap_4.F90 

Sea_Ice_4.o:./Sea_Ice_4.F90 Constants_0.o Convert_0.o Maths_0.o Flu_1.o Ice_1.o Sal_1.o Ice_2.o Sal_2.o Flu_3a.o Flu_3b.o Sea_3a.o 
	 $(F90) -c ./Sea_Ice_4.F90 

Sea_Ice_Vap_4.o:./Sea_Ice_Vap_4.F90 Constants_0.o Maths_0.o Flu_1.o Ice_1.o Sal_1.o Sal_2.o 
	 $(F90) -c ./Sea_Ice_Vap_4.F90 

Liq_Ice_Air_4.o:./Liq_Ice_Air_4.F90 Constants_0.o Convert_0.o Maths_0.o Air_1.o Flu_1.o Ice_1.o Air_2.o Flu_2.o Ice_2.o Air_3b.o Ice_Liq_4.o 
	 $(F90) -c ./Liq_Ice_Air_4.F90 

Ice_Air_4a.o:./Ice_Air_4a.F90 Constants_0.o Convert_0.o Maths_0.o Air_1.o Ice_1.o Air_2.o Ice_2.o Air_3a.o Air_3b.o Ice_Vap_4.o 
	 $(F90) -c ./Ice_Air_4a.F90 

Ice_Air_4b.o:./Ice_Air_4b.F90 Constants_0.o Convert_0.o Ice_1.o Air_3a.o Ice_Air_4a.o 
	 $(F90) -c ./Ice_Air_4b.F90 

Liq_Air_4b.o:./Liq_Air_4b.F90 Constants_0.o Air_3a.o Flu_3a.o Liq_Air_4a.o 
	 $(F90) -c ./Liq_Air_4b.F90 

Ice_Air_4c.o:./Ice_Air_4c.F90 Constants_0.o Convert_0.o Ice_Liq_4.o Ice_Air_4b.o 
	 $(F90) -c ./Ice_Air_4c.F90 

Liq_Air_4c.o:./Liq_Air_4c.F90 Constants_0.o Air_3a.o Ice_Liq_4.o Liq_Air_4a.o Liq_Air_4b.o 
	 $(F90) -c ./Liq_Air_4c.F90 

Ice_Flu_5.o:./Ice_Flu_5.F90 Constants_0.o 
	 $(F90) -c ./Ice_Flu_5.F90 

Air_5.o:./Air_5.F90 Constants_0.o Air_3b.o Liq_Air_4a.o 
	 $(F90) -c ./Air_5.F90 

Convert_5.o:./Convert_5.F90 Constants_0.o Convert_0.o 
	 $(F90) -c ./Convert_5.F90 

Flu_IF97_5.o:./Flu_IF97_5.F90 Constants_0.o 
	 $(F90) -c ./Flu_IF97_5.F90 

Liq_F03_5.o:./Liq_F03_5.F90 Constants_0.o 
	 $(F90) -c ./Liq_F03_5.F90 

Sea_5a.o:./Sea_5a.F90 Constants_0.o Sea_3a.o Sea_3b.o Sea_3c.o 
	 $(F90) -c ./Sea_5a.F90 

GSW_Library_5.o:./GSW_Library_5.F90 Constants_0.o Convert_0.o Maths_0.o Flu_1.o Sal_1.o Sal_2.o Flu_3a.o Sea_3a.o Sea_3b.o Liq_F03_5.o Sea_5a.o 
	 $(F90) -c ./GSW_Library_5.F90 

OS2008_5.o:./OS2008_5.F90 Flu_1.o Ice_1.o Sal_1.o Flu_2.o Sal_2.o Flu_3a.o Liq_Vap_4.o 
	 $(F90) -c ./OS2008_5.F90 

Values_Air.o:./Values_Air.F90 Constants_0.o Convert_0.o Maths_0.o Air_1.o Air_2.o Air_3a.o Air_3b.o Air_3c.o Air_5.o 
	 $(F90) -c ./Values_Air.F90 

Values_CNV.o:./Values_CNV.F90 Constants_0.o Convert_0.o Convert_5.o 
	 $(F90) -c ./Values_CNV.F90 

Values_Ice.o:./Values_Ice.F90 Constants_0.o Convert_0.o Ice_1.o Ice_2.o 
	 $(F90) -c ./Values_Ice.F90 

Values_Sal.o:./Values_Sal.F90 Constants_0.o Convert_0.o Sal_1.o Sal_2.o 
	 $(F90) -c ./Values_Sal.F90 

Values_Sea.o:./Values_Sea.F90 Constants_0.o Convert_0.o Sal_1.o Sal_2.o Flu_1.o Flu_2.o Flu_3a.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_3d.o Sea_5a.o 
	 $(F90) -c ./Values_Sea.F90 

Values_Flu.o:./Values_Flu.F90 Constants_0.o Convert_0.o Flu_1.o Flu_2.o Flu_3a.o Flu_3b.o Liq_F03_5.o 
	 $(F90) -c ./Values_Flu.F90 

Values_GSW.o:./Values_GSW.F90 Constants_0.o Convert_0.o Maths_0.o Sal_1.o Sal_2.o Liq_F03_5.o Convert_5.o GSW_Library_5.o 
	 $(F90) -c ./Values_GSW.F90 

Values_Mix.o:./Values_Mix.F90 Constants_0.o Maths_0.o Convert_0.o Air_1.o Flu_1.o Ice_1.o Sal_1.o Air_2.o Flu_2.o Ice_2.o Sal_2.o Flu_3a.o Flu_3b.o Sea_3a.o Sea_3b.o Sea_3c.o Sea_3d.o Ice_Liq_4.o Ice_Vap_4.o Liq_Vap_4.o Sea_Air_4.o Sea_Ice_4.o Sea_Liq_4.o Sea_Vap_4.o Liq_Ice_Air_4.o Sea_Ice_Vap_4.o Ice_Air_4a.o Ice_Air_4b.o Ice_Air_4c.o Liq_Air_4a.o Liq_Air_4b.o Liq_Air_4c.o Ice_Flu_5.o 
	 $(F90) -c ./Values_Mix.F90 

All.o:All.F90 Constants_0.o Convert_0.o Maths_0.o Flu_1.o Ice_1.o Sal_1.o Air_1.o Flu_2.o Ice_2.o Sal_2.o Air_2.o Flu_3a.o Sea_3a.o Air_3a.o Flu_3b.o Air_3b.o Sea_3b.o Sea_3c.o Air_3c.o Sea_3d.o Ice_Liq_4.o Ice_Vap_4.o Liq_Vap_4.o Sea_Air_4.o Sea_Liq_4.o Sea_Vap_4.o Sea_Ice_4.o Sea_Ice_Vap_4.o Liq_Ice_Air_4.o Liq_Air_4a.o Ice_Air_4a.o Ice_Air_4b.o Liq_Air_4b.o Ice_Air_4c.o Liq_Air_4c.o Ice_Flu_5.o Air_5.o Convert_5.o Flu_IF97_5.o GSW_Library_5.o Liq_F03_5.o OS2008_5.o Sea_5a.o Values_Air.o Values_CNV.o Values_Ice.o Values_Sal.o Values_Sea.o Values_Flu.o Values_GSW.o Values_Mix.o 
	 $(F90) -c All.F90 
# This entry allows you to type " make clean " to get rid of
# all object and module files 
clean:
	rm -f -r f_{files,modd}* *.o *.mod *.M *.d V*.inc *.vo \
	V*.f *.dbg album F.err
  
