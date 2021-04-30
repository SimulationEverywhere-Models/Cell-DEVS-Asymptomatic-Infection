#BeginMacro(recovery)
0.4
#EndMacro

#BeginMacro(asym_ratio)
0.2
#EndMacro

#BeginMacro(i_effect_moore)
min
(
  (0,0)~sus,
  (0,0)~sus * $virulence_infec *
  (
    (0,0)~infec_show + $connection * $movement / (0,0)~pop *
    (
      (-1,-1)~pop * (-1,-1)~infec_show + (-1,0)~pop * (-1,0)~infec_show + (-1,1)~pop * (-1,1)~infec_show +
      (0,-1)~pop * (0,-1)~infec_show + (0,1)~pop * (0,1)~infec_show +
      (1,-1)~pop * (1,-1)~infec_show + (1,0)~pop * (1,0)~infec_show + (1,1)~pop * (1,1)~infec_show
    )
  )
  
  + 
  
  (0,0)~sus * $virulence_asym *
  (
	(0,0)~infec_a + $connection * $movement / (0,0)~pop *
    (
      (-1,-1)~pop * (-1,-1)~infec_a + (-1,0)~pop * (-1,0)~infec_a + (-1,1)~pop * (-1,1)~infec_a +
      (0,-1)~pop * (0,-1)~infec_a + (0,1)~pop * (0,1)~infec_a +
      (1,-1)~pop * (1,-1)~infec_a + (1,0)~pop * (1,0)~infec_a + (1,1)~pop * (1,1)~infec_a
    )
  )
)
#EndMacro
