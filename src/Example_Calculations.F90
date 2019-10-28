program example_calculations

!This program is provide as a simple example of library usage

use constants_0
use flu_2
use ice_2
use air_2
use sea_3a

implicit none
real(dbl) a_si, sa_si, t_si, p_si, d_si

100 continue
write(*,*)" "
write(*,*)" "
write(*,*) "enter sa_si, t_si, p_si for seawater to list example properties"
write(*,*) "enter zeroes to consider moist air properties"
write(*,*)" "
read(*,*) sa_si, t_si, p_si
if(max(sa_si, t_si, p_si) == 0d0) go to 200
write(*,*)" "
call sea_3a_example_call(sa_si, t_si, p_si)
go to 100

200 continue
write(*,*)" "
write(*,*)" "
write(*,*) "enter a_si, t_si, d_si for moist air to list example properties"
write(*,*) "enter zeroes to consider pure fluid water properties"
write(*,*)" "
read(*,*) a_si, t_si, d_si
if(max(a_si, t_si, d_si) == 0d0) go to 300
write(*,*)" "
call air_2_example_call(a_si, t_si, d_si)
go to 200

300 continue
write(*,*)" "
write(*,*)" "
write(*,*) "enter t_si, d_si for fluid water to list example properties"
write(*,*) "enter zeroes to consider ice properties"
write(*,*)" "
read(*,*) t_si, d_si
if(max(t_si, d_si) == 0d0) go to 400
write(*,*)" "
call flu_2_example_call(t_si, d_si)
go to 300

400 continue
write(*,*)" "
write(*,*)" "
write(*,*) "enter t_si, p_si for ice to list example properties"
write(*,*)" "
read(*,*) t_si, p_si
if(max(t_si, p_si) == 0d0) stop
write(*,*)" "
call ice_2_example_call(t_si, p_si)
go to 400

contains


!==========================================================================
subroutine sea_3a_example_call(sa_si, t_si, p_si)
!==========================================================================

real(dbl) sa_si, t_si, p_si

write(*,*) " Implementation of thermodynamic properties of seawater in FORTRAN"
write(*,*) " for Publication in Ocean Science, 2009"
write(*,*) " "

if(p_si <= 0d0)then
  write(*,*) "incorrect: negative density"
  return
end if

if(t_si <= 0d0)then
  write(*,*) "incorrect: negative temperature"
  return
end if

if(sa_si < 0d0)then
  write(*,*) "incorrect: negative salinity"
  return
end if

if(sa_si >= 1d0)then
  write(*,*) "incorrect: salinity >= 1000 g/kg"
  return
end if


if(p_si > sal_pmax)then
  write(*,*) "Warning: pressure > ", sal_pmax, " Pa is outside validity"
end if

if(p_si < sal_pmin)then
  write(*,*) "Warning: pressure < ", sal_pmin, " Pa is outside validity"
end if

if(t_si > sal_tmax)then
  write(*,*) "Warning: temperature > ", sal_tmax, " K is outside validity"
end if

if(t_si < sal_tmin)then
  write(*,*) "Warning: temperature < ", sal_tmin, " K is outside validity"
end if

if(sa_si > sal_smax)then
  write(*,*) "Warning: salinity > ", sal_smax, " K is outside validity"
end if

if(sa_si < sal_smin)then
  write(*,*) "Warning: salinity > ", sal_smin, " K is outside validity"
end if

write(*,*) " Absolute salinity:          ", sa_si, "kg/kg"
write(*,*) " Absolute temperature:       ", t_si, "K"
write(*,*) " Absolute pressure:          ", p_si, "Pa"
write(*,*) " Isobaric heat capacity:     ", sea_cp_si(sa_si, t_si, p_si), "J/(kg K)"
write(*,*) " Density:                    ", sea_density_si(sa_si, t_si, p_si), "kg/m3"
write(*,*) " Enthalpy:                   ", sea_enthalpy_si(sa_si, t_si, p_si), "J/kg"
write(*,*) " Entropy:                    ", sea_entropy_si(sa_si, t_si, p_si), "J/(kg K)"
write(*,*) " Thermal expansion:          ", sea_g_expansion_t_si(sa_si, t_si, p_si), "1/K"
write(*,*) " Haline contraction:         ", sea_g_contraction_t_si(sa_si, t_si, p_si), "kg/kg"
write(*,*) " Gibbs energy:               ", sea_gibbs_energy_si(sa_si, t_si, p_si), "J/kg"
write(*,*) " Internal energy:            ", sea_internal_energy_si(sa_si, t_si, p_si), "J/kg"
write(*,*) " Adiabatic compressibility:  ", sea_kappa_s_si(sa_si, t_si, p_si), "1/Pa"
write(*,*) " Isothermal compressibility: ", sea_kappa_t_si(sa_si, t_si, p_si), "1/Pa"
write(*,*) " Adiabatic lapse rate:       ", sea_lapserate_si(sa_si, t_si, p_si), "K/Pa"
write(*,*) " Osmotic coefficient:        ", sea_osm_coeff_si(sa_si, t_si, p_si), "1"
write(*,*) " Sound speed:                ", sea_soundspeed_si(sa_si, t_si, p_si), "m/s"
write(*,*) " "
write(*,*) "Note: Absolute energy and entropy are defined by IAPWS-95 and IAPWS-08"

end subroutine


!==========================================================================
subroutine air_2_example_call(a_si, t_si, d_si)
!==========================================================================

!STANDARD OCEAN CONDITIONS OF DRY AIR AT T_SI = 273.15, D_SI = 1.29275937468394

real(dbl) a_si, t_si, d_si
real(dbl) ma

ma = molar_mass_air_L2000    !molar mass of air in kg/mol

write(*,*) " Implementation of thermodynamic properties of humid air in FORTRAN"
write(*,*) " for Publication in Ocean Science, 2009"
write(*,*) " "

if(a_si < 0d0 .or. a_si > 1d0)then
  write(*,*) "incorrect: dry-air mass fraction between 0 and 1 required"
  return
end if

if(d_si <= 0d0)then
  write(*,*) "incorrect: positive density required"
  return
end if

if(d_si >= 1000d0)then
  write(*,*) "warning: d_si = ", d_si, " kg/m3 is large for air"
end if

if(t_si >= 1273d0)then
  write(*,*) "warning: t_si = ", t_si, " K is large for air"
end if

write(*,*) " Dry air fraction:           ", a_si, "kg/kg"
write(*,*) " Absolute temperature:       ", t_si, "K"
write(*,*) " Mass density:               ", d_si, "kg/m3"
write(*,*) " Molar density:              ", 0.001d0 * d_si / ma, "mol/l"
write(*,*) " Specific volume:            ", 1d0 / d_si, "m3/kg"
write(*,*) " Molar volume:               ", 1d0 / (0.001d0 * d_si / ma), "l/mol"
write(*,*) " Specific heat capacity cp:  ", air_f_cp_si(a_si, t_si, d_si), "J/(kg K)"
write(*,*) " Molar heat capacity cp:     ", air_f_cp_si(a_si, t_si, d_si) * ma, "J/(mol K)"
write(*,*) " Specific heat capacity cv:  ", air_f_cv_si(a_si, t_si, d_si), "J/(kg K)"
write(*,*) " Molar heat capacity cv:     ", air_f_cv_si(a_si, t_si, d_si) * ma, "J/(mol K)"
write(*,*) " Specific enthalpy:          ", air_f_enthalpy_si(a_si, t_si, d_si),  "J/kg"
write(*,*) " Molar enthalpy:             ", air_f_enthalpy_si(a_si, t_si, d_si) * ma, "J/mol"
write(*,*) " Specific entropy:           ", air_f_entropy_si(a_si, t_si, d_si), "J/(kg K)"
write(*,*) " Molar entropy:              ", air_f_entropy_si(a_si, t_si, d_si) * ma, "J/(mol K)"
write(*,*) " Thermal expansion:          ", air_f_expansion_si(a_si, t_si, d_si), "1/K"
write(*,*) " Specific Gibbs energy:      ", air_f_gibbs_energy_si(a_si, t_si, d_si), "J/kg"
write(*,*) " Molar Gibbs energy:         ", air_f_gibbs_energy_si(a_si, t_si, d_si) * ma, "J/mol"
write(*,*) " Specific internal energy:   ", air_f_internal_energy_si(a_si, t_si, d_si), "J/kg"
write(*,*) " Molar internal energy:      ", air_f_internal_energy_si(a_si, t_si, d_si) * ma, "J/mol"
write(*,*) " Adiabatic compressibility:  ", air_f_kappa_s_si(a_si, t_si, d_si), "1/Pa"
write(*,*) " Isothermal compressibility: ", air_f_kappa_t_si(a_si, t_si, d_si), "1/Pa"
write(*,*) " Adiabatic lapse rate:       ", air_f_lapserate_si(a_si, t_si, d_si), "K/Pa"
write(*,*) " Adiabatic lapse rate:       ", 100d0 * air_f_lapserate_si(a_si, t_si, d_si) * d_si * 9.81d0, "K/(100 m)"
write(*,*) " Absolute pressure:          ", air_f_pressure_si(a_si, t_si, d_si), "Pa"
write(*,*) " Sound speed:                ", air_f_soundspeed_si(a_si, t_si, d_si), "m/s"

end subroutine


!==========================================================================
subroutine flu_2_example_call(t_si, d_si)
!==========================================================================

real(dbl) t_si, d_si

write(*,*) " Implementation of thermodynamic properties of fluid water in FORTRAN"
write(*,*) " for Publication in Ocean Science, 2009"
write(*,*) " "

if(d_si <= 0d0)then
  write(*,*) "incorrect: negative density"
  return
end if

if(t_si <= 0d0)then
  write(*,*) "incorrect: negative temperature"
  return
end if

if(d_si > 1250d0)then
  write(*,*) "Warning: density > 1250 kg m-3 is outside validity"
end if

if(d_si < 1d-14)then
  write(*,*) "Warning: density < 1E-14 kg m-3 is outside validity"
end if

if(t_si > 1300d0)then
  write(*,*) "Warning: temperature > 1300 K is outside validity"
end if

if(t_si < 130d0)then
  write(*,*) "Warning: temperature < 130 K is outside validity"
end if

write(*,*) " Absolute temperature:       ", t_si, "K"
write(*,*) " Density:                    ", d_si, "kg/m3"
write(*,*) " Heat capacity cp:           ", flu_cp_si(t_si, d_si), "J/(kg K)"
write(*,*) " Heat capacity cv:           ", flu_cv_si(t_si, d_si), "J/(kg K)"
write(*,*) " Enthalpy:                   ", flu_enthalpy_si(t_si, d_si), "J/kg"
write(*,*) " Entropy:                    ", flu_entropy_si(t_si, d_si), "J/(kg K)"
write(*,*) " Thermal expansion:          ", flu_expansion_si(t_si, d_si), "1/K"
write(*,*) " Gibbs energy:               ", flu_gibbs_energy_si(t_si, d_si), "J/kg"
write(*,*) " Internal energy:            ", flu_internal_energy_si(t_si, d_si), "J/kg"
write(*,*) " Adiabatic compressibility:  ", flu_kappa_s_si(t_si, d_si), "1/Pa"
write(*,*) " Isothermal compressibility: ", flu_kappa_t_si(t_si, d_si), "1/Pa"
write(*,*) " Adiabatic lapse rate:       ", flu_lapserate_si(t_si, d_si), "K/Pa"
write(*,*) " Absolute pressure:          ", flu_pressure_si(t_si, d_si), "Pa"
write(*,*) " Sound speed:                ", flu_soundspeed_si(t_si, d_si), "m/s"
write(*,*) " "
write(*,*) "Note: Absolute energy and entropy are defined by IAPWS-95"
write(*,*) "Note: Phase boundaries of fluid water are ignored"

end subroutine


!==========================================================================
subroutine ice_2_example_call(t_si, p_si)
!==========================================================================

real(dbl) t_si, p_si

write(*,*) " Implementation of thermodynamic properties of ice Ih in FORTRAN"
write(*,*) " for Publication in Ocean Science, 2009"
write(*,*) " "

if(p_si < 0d0)then
  write(*,*) "incorrect: negative pressure"
  return
end if

if(t_si < 0d0)then
  write(*,*) "incorrect: negative temperature"
  return
end if

if(p_si > 2d8)then
  write(*,*) "Warning: pressure > 200 MPa is outside validity"
end if

if(t_si > 273.16d0)then
  write(*,*) "Warning: temperature > 273.16 K is outside validity"
end if

write(*,*) " Absolute temperature:       ", t_si, "K"
write(*,*) " Absolute pressure:          ", p_si, "Pa"
write(*,*) " Chemical potential:         ", ice_chempot_si(t_si, p_si), "J/kg"
write(*,*) " Heat capacity cp:           ", ice_cp_si(t_si, p_si), "J/(kg K)"
write(*,*) " Density:                    ", ice_density_si(t_si, p_si), "kg/m3"
write(*,*) " Enthalpy:                   ", ice_enthalpy_si(t_si, p_si), "J/kg"
write(*,*) " Entropy:                    ", ice_entropy_si(t_si, p_si), "J/(kg K)"
write(*,*) " Thermal expansion:          ", ice_expansion_si(t_si, p_si), "1/K"
write(*,*) " Helmholtz energy:           ", ice_helmholtz_energy_si(t_si, p_si), "J/kg"
write(*,*) " Internal energy:            ", ice_internal_energy_si(t_si, p_si), "J/kg"
write(*,*) " Adiabatic compressibility:  ", ice_kappa_s_si(t_si, p_si), "1/Pa"
write(*,*) " Isothermal compressibility: ", ice_kappa_t_si(t_si, p_si), "1/Pa"
write(*,*) " Adiabatic lapse rate:       ", ice_lapserate_si(t_si, p_si), "K/Pa"
write(*,*) " Pressure coefficient:       ", ice_p_coefficient_si(t_si, p_si), "Pa/K"
write(*,*) " Specific volume:            ", ice_specific_volume_si(t_si, p_si), "m3/kg"
write(*,*) " "
write(*,*) "Note: Absolute entropy is defined by IAPWS-95 rather than"
write(*,*) "      by Pauling's residual entropy"
write(*,*) " "
write(*,*) "Note: Phase boundaries of ice Ih are ignored"

end subroutine

end program
