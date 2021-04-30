#include(siar_roman.inc)
[top]
components : area

[area]
type : cell
width : 70
height : 70
delay : transport
defaultDelayTime : 1
border : wrapped
neighbors : area(-1,-1) area(-1,0) area(-1,1)
neighbors : area(0,-1)  area(0,0)  area(0,1)
neighbors : area(1,-1)  area(1,0)  area(1,1)
initialvalue : -1


localtransition : siar-roman-rule

statevariables: population virulence_infec virulence_asym connection movement i_sus i_infec i_rec i_infec_a i_infec_show cell_type
statevalues: 100 0.6 0.1 1.0 0.8 1.0 0.0 0.0 0.0 0.0 0
initialvariablesvalue: siar_roman_8.var

neighborports : initial infec rec pop sus infec_a infec_show

[siar-roman-rule]
rule : {~initial := 0; ~pop := $population; ~infec := $i_infec; ~sus := $i_sus; ~rec := $i_rec; ~infec_a := $i_infec_a; ~infec_show := $i_infec_show; }
 1 {(0,0)~initial = -1}


rule : {~pop := $population; ~infec := $i_infec; ~sus := $i_sus; ~rec := $i_rec; ~infec_a := $i_infec_a; ~infec_show := $i_infec_show; }
{
$i_rec := round(((0,0)~rec + #macro(recovery) * (0,0)~infec)*100)/100;
$i_infec:= round(((1 - #macro(recovery)) * (0,0)~infec + #macro(i_effect_moore))*100)/100;
$i_infec_show:= $i_infec * (1 - #macro(asym_ratio));
$i_infec_a:= $i_infec * #macro(asym_ratio);
$i_sus := 1 - $i_rec - $i_infec;}
1 { (0,0)~initial != -1 AND $cell_type = 0}



rule : {~pop := $population; ~infec := $i_infec; ~sus := $i_sus; ~rec := $i_rec; ~infec_a := $i_infec_a*0.12; ~infec_show := 0; }
{
$i_rec := round(((0,0)~rec + #macro(recovery) * (0,0)~infec)*100)/100;
$i_infec:= round(((1 - #macro(recovery)) * (0,0)~infec + #macro(i_effect_moore))*100)/100;
$i_infec_show:= $i_infec * (1 - #macro(asym_ratio));
$i_infec_a:= $i_infec * #macro(asym_ratio);
$i_sus := 1 - $i_rec - $i_infec;}
1 { (0,0)~initial != -1}
