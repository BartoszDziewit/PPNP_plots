set term tikz standalone size 144mm, 95mm font '\bfseries,18'
set output 'm21.tex'
set nokey
unset ytics
set xrange [6.6:8.4]
set yrange [-1:6]
set xtics 0.4 font ',22';
#set grid xtics

offset = 0.081
set xlabel '$\Delta m^2_{21}/10^{-5} \textnormal{ eV}^2$' font '\bfseries,26';


###### Nu Fit #############
# 3 sigma:
set object 1 rect from 6.82,0.0 to 8.03,0.35 fc rgb "blue"  back
set object 2 rect from 6.82,0.65 to 8.03,1.0 fc rgb "blue"  back
# 1 sigma:
set object 3 rect from 7.41-0.2,0.0 to 7.41 +0.21,0.35 fc rgb "red"  back
set object 33 rect from 7.41-0.2,0.65 to 7.41 +0.21,1.0 fc rgb "red"  back
# central value:
set object 4 rect from 7.41-0.01,0.0 to 7.41 +0.01,0.35 fc rgb "green"  back
set object 44 rect from 7.41-0.01,0.65 to 7.41 +0.01,1.0 fc rgb "green"  back

set label 11 "IO" at 6.82-offset, 0.18 center norotate front   nopoint font '\bfseries,12'
set label 111 "NO" at 6.82-offset, 0.69 center norotate front   nopoint font '\bfseries,12'

set label 1 "NuFit5.2" at graph 0.5, 0.33, 0 center norotate front   nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 5 rect from 6.94,2.0 to 8.14,2.35 fc rgb "blue"  back
set object 55 rect from 6.94,2.65 to 8.14,3.0 fc rgb "blue"  back
# 1 sigma:
set object 6 rect from 7.5-0.2,2.0 to 7.5+0.22,2.35 fc rgb "red"  back
set object 66 rect from 7.5-0.2,2.65 to 7.5+0.22,3.0 fc rgb "red"  back
# central value:
set object 7 rect from 7.5-0.01,2.0 to 7.5+0.01,2.35 fc rgb "green"  back
set object 77 rect from 7.5-0.01,2.65 to 7.5+0.01,3.0 fc rgb "green"  back

set label 22 "IO" at 6.94-offset, 2.18 center norotate front   nopoint font '\bfseries,12'
set label 222 "NO" at 6.94-offset, 2.69 center norotate front   nopoint font '\bfseries,12'


set label 2 "de Salas et al (2021)" at graph 0.5, 0.62, 0 center norotate front   nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 8 rect from 6.93,4.0 to 7.93,4.35 fc rgb "blue"  back
set object 88 rect from 6.93,4.65 to 7.93,5.0 fc rgb "blue"  back
# 1 sigma:
set object 9 rect from 7.36-0.15,4.0 to 7.36+0.16,4.35 fc rgb "red"  back
set object 99 rect from 7.36-0.15,4.65 to 7.36+0.16,5.0 fc rgb "red"  back
# central value:
set object 10 rect from 7.36-0.01,4.0 to 7.36+0.01,4.35 fc rgb "green"  back
set object 101 rect from 7.36-0.01,4.65 to 7.36+0.01,5.0 fc rgb "green"  back

set label 33 "IO" at 6.93-offset, 4.18 center norotate front   nopoint font '\bfseries,12'
set label 333 "NO" at 6.93-offset, 4.69 center norotate front   nopoint font '\bfseries,12'

set label 3 "Capozzi et al (2021)" at graph 0.5, 0.91, 0 center norotate front   nopoint 

#set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################

###### TBM #############
set parametric 
plot [t=-2:6]0.33,t lw 5 lc "gold"
################################

   
unset output
system("pdflatex m21")

