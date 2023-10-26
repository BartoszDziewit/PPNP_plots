set term tikz standalone size 144mm, 95mm font '\bfseries,18'
set output 'delta.tex'
set nokey
unset ytics
x_a = 0.6
x_b = 2.1
set xrange [x_a:x_b]
set yrange [-1:6]
set xtics 0.3 font ',22';
#set grid xtics

offset =((x_b - x_a )/22.22)
set xlabel '$\delta_{CP}/\pi$' font '\bfseries,28';


###### Nu Fit #############
# 3 sigma:
set object 1 rect from 1.08,0.0 to 1.91,0.35 fc rgb "blue"  back
set object 2 rect from 0.8,0.65 to 1.94,1.0 fc rgb "blue"  back
# 1 sigma:
set object 3 rect from 1.53-0.16,0.0 to 1.53+0.12,0.35 fc rgb "red"  back
set object 33 rect from 1.29-0.14,0.65 to 1.29+0.2,1.0 fc rgb "red"  back
# central value:
set object 4 rect from 1.53-0.005,0.0 to 1.53+0.005,0.35 fc rgb "green"  back
set object 44 rect from 1.29-0.005,0.65 to 1.29+0.005,1.0 fc rgb "green"  back

set label 11 "IO" at 1.08-offset, 0.18 center norotate front   nopoint font '\bfseries,12'
set label 111 "NO" at 0.8-offset, 0.69 center norotate front   nopoint font '\bfseries,12'

set label 1 "NuFit5.2" at graph 0.5, 0.33, 0 center norotate front   nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 5 rect from 1.11,2.0 to 1.96,2.35 fc rgb "blue"  back
set object 55 rect from 0.71,2.65 to 1.99,3.0 fc rgb "blue"  back
# 1 sigma:
set object 6 rect from 1.58-0.16,2.0 to 1.58+0.15,2.35 fc rgb "red"  back
set object 66 rect from 1.08-0.12,2.65 to 1.08+0.13,3.0 fc rgb "red"  back
# central value:
set object 7 rect from 1.58-0.005,2.0 to 1.58+0.005,2.35 fc rgb "green"  back
set object 77 rect from 1.08-0.005,2.65 to 1.08+0.005,3.0 fc rgb "green"  back

set label 22 "IO" at 1.11-offset, 2.18 center norotate front   nopoint font '\bfseries,12'
set label 222 "NO" at 0.71-offset, 2.69 center norotate front   nopoint font '\bfseries,12'


set label 2 "de Salas et al (2021)" at graph 0.5, 0.62, 0 center norotate front   nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 8 rect from 1.07,4.0 to 1.90,4.35 fc rgb "blue"  back
set object 88 rect from 0.77,4.65 to 1.97,5.0 fc rgb "blue"  back
# 1 sigma:
set object 9 rect from 1.52-0.11,4.0 to 1.52+0.15,4.35 fc rgb "red"  back
set object 99 rect from 1.24-0.13,4.65 to 1.24+0.18,5.0 fc rgb "red"  back
# central value:
set object 10 rect from 1.52-0.005,4.0 to 1.52+0.005,4.35 fc rgb "green"  back
set object 101 rect from 1.24-0.005,4.65 to 1.24+0.005,5.0 fc rgb "green"  back

set label 33 "IO" at 1.07-offset, 4.18 center norotate front   nopoint font '\bfseries,12'
set label 333 "NO" at 0.77-offset, 4.69 center norotate front   nopoint font '\bfseries,12'

set label 3 "Capozzi et al (2021)" at graph 0.5, 0.91, 0 center norotate front   nopoint 

#set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################

###### TBM #############
set parametric 
plot [t=-2:6]0.33,t lw 5 lc "gold"
################################

   
unset output
system("pdflatex delta")

