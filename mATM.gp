set term tikz standalone size 144mm, 95mm font '\bfseries,18'
set output 'mATM.tex'
set nokey
unset ytics
x_a = 2.3
x_b = 2.7
set xrange [x_a:x_b]
set yrange [-1:6]
set xtics 0.1 font ',22';
#set grid xtics

offset =((x_b - x_a )/22.22)
set xlabel '$\Delta m^2_{atm}/10^{-3} \textnormal{ eV}^2$' font '\bfseries,26';


###### Nu Fit #############
# 3 sigma:
set object 1 rect from 2.406,0.0 to 2.570,0.35 fc rgb "blue"  back
set object 2 rect from 2.427,0.65 to 2.590,1.0 fc rgb "blue"  back
# 1 sigma:
set object 3 rect from 2.486-0.025,0.0 to 2.486+0.028,0.35 fc rgb "red"  back
set object 33 rect from 2.507-0.027,0.65 to 2.507+0.026,1.0 fc rgb "red"  back
# central value:
set object 4 rect from 2.486-0.001,0.0 to 2.486 +0.001,0.35 fc rgb "green"  back
set object 44 rect from 2.507-0.001,0.65 to 2.507 +0.001,1.0 fc rgb "green"  back

set label 11 "IO" at 2.406-offset, 0.18 center norotate front   nopoint font '\bfseries,12'
set label 111 "NO" at 2.427-offset, 0.69 center norotate front   nopoint font '\bfseries,12'

set label 1 "NuFit5.2" at graph 0.5, 0.33, 0 center norotate front   nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 5 rect from 2.37,2.0 to 2.53,2.35 fc rgb "blue"  back
set object 55 rect from 2.47,2.65 to 2.63,3.0 fc rgb "blue"  back
# 1 sigma:
set object 6 rect from 2.45-0.03,2.0 to 2.45+0.02,2.35 fc rgb "red"  back
set object 66 rect from 2.55-0.03,2.65 to 2.55+0.02,3.0 fc rgb "red"  back
# central value:
set object 7 rect from 2.45-0.001,2.0 to 2.45+0.001,2.35 fc rgb "green"  back
set object 77 rect from 2.55-0.001,2.65 to 2.55+0.001,3.0 fc rgb "green"  back

set label 22 "IO" at 2.37-offset, 2.18 center norotate front   nopoint font '\bfseries,12'
set label 222 "NO" at 2.47-offset, 2.69 center norotate front   nopoint font '\bfseries,12'


set label 2 "de Salas et al (2021)" at graph 0.5, 0.62, 0 center norotate front   nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 8 rect from 2.401,4.0 to 2.565,4.35 fc rgb "blue"  back
set object 88 rect from 2.376,4.65 to 2.541,5.0 fc rgb "blue"  back
# 1 sigma:
set object 9 rect from 2.485-0.031,4.0 to 2.485+0.023,4.35 fc rgb "red"  back
set object 99 rect from 2.455-0.025,4.65 to 2.455+0.03,5.0 fc rgb "red"  back
# central value:
set object 10 rect from 2.485-0.001,4.0 to 2.485+0.001,4.35 fc rgb "green"  back
set object 101 rect from 2.455-0.001,4.65 to 2.455+0.001,5.0 fc rgb "green"  back

set label 33 "IO" at 2.401-offset, 4.18 center norotate front   nopoint font '\bfseries,12'
set label 333 "NO" at 2.376-offset, 4.69 center norotate front   nopoint font '\bfseries,12'

set label 3 "Capozzi et al (2021)" at graph 0.5, 0.91, 0 center norotate front   nopoint 

#set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################

###### TBM #############
set parametric 
plot [t=-2:6]0.33,t lw 5 lc "gold"
################################

   
unset output
system("pdflatex mATM")

