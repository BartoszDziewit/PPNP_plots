set term tikz standalone size 144mm, 95mm font '\bfseries,18'
set output 'plot_s13.tex'
set nokey
unset ytics
#set ytics right
#set ytics right ("(A)" 4.5, "(B)" 2.5, "(C)" 0.5) 
set grid ytics
#set grid xtics
set xtics 0.01 font ',22';
set xrange [-0.001:0.03]
set yrange [-1:6]
offset=0.0014

set xlabel  '$\sin^2\theta_{13}$' font '\bfseries,28';

###### Nu Fit #############
# 3 sigma:
#IO:
set object 1 rect from 0.02048,0.0 to 0.02416,.35 fc rgb "blue"  back
#NO:
set object 11 rect from 0.02052,0.65 to 0.02398,1.0 fc rgb "blue"  back 
# 1 sigma:
set object 2 rect from 0.02223-0.00058,0.0 to 0.02223+0.00058,0.35 fc rgb "red"  back
set object 22 rect from 0.02225-0.00059,0.65 to 0.02225+0.00056,1.0 fc rgb "red"  back
# central value:
set object 3 rect from 0.02223-0.00005,0.0 to 0.02223+0.00005,0.35 fc rgb "green"  back
set object 33 rect from 0.02225-0.00005,0.65 to 0.02225+0.00005,1.0 fc rgb "green"  back

set label 11 "IO" at 0.02048-offset, 0.18 center norotate front   nopoint font '\bfseries,12'
set label 111 "NO" at 0.02052-offset, 0.69 center norotate front   nopoint font '\bfseries,12'

set label 1 "NuFit5.2" at graph 0.5, 0.33, 0 center norotate front   nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
#IO:
set object 4 rect from 0.02018,2.00 to 0.02424,2.35 fc rgb "blue"  back
#NO:
set object 44 rect from 0.0200,2.65 to 0.02405,3.0 fc rgb "blue"  back
# 1 sigma:
set object 5 rect from 0.02225-0.00070,2.0 to 0.02225+0.00064,2.35 fc rgb "red"  back
set object 55 rect from 0.02200-0.00062,2.65 to 0.02200+0.00069,3.0 fc rgb "red"  back
# central value:
set object 6 rect from 0.02225-0.00005,2.0 to 0.02225+0.00005,2.35 fc rgb "green"  back
set object 66 rect from 0.02200-0.00005,2.65 to 0.02200+0.00005,3.0 fc rgb "green"  back

set label 22 "IO" at 0.02018-offset, 2.18 center norotate front   nopoint font '\bfseries,12'
set label 222 "NO" at 0.0200-offset, 2.69 center norotate front   nopoint font '\bfseries,12

set label 2 "de Salas et al (2021)" at graph 0.5, 0.62, 0 center norotate front   nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
#IO:
set object 7 rect from 0.0203,4.0 to 0.0244,4.35 fc rgb "blue"  back
#NO:
set object 77 rect from 0.0204,4.65 to 0.0244,5.0 fc rgb "blue"  back
# 1 sigma:
set object 8 rect from 0.0223-0.0006,4.0 to 0.0223+0.0006,4.35 fc rgb "red"  back
set object 88 rect from 0.0223-0.0006,4.65 to 0.0223+0.0007,5.0 fc rgb "red"  back
# central value:
set object 9 rect from 0.0223-0.00005,4.0 to 0.0223+0.00005,4.35 fc rgb "green"  back
set object 99 rect from 0.0223-0.00005,4.65 to 0.0223+0.00005,5.0 fc rgb "green"  back

set label 44 "IO" at 0.0203-offset, 4.18 center norotate front   nopoint font '\bfseries,12'
set label 444 "NO" at 0.0204-offset, 4.69 center norotate front   nopoint font '\bfseries,12

set label 3 "Capozzi et al (2021)" at graph 0.5, 0.91, 0 center norotate front   nopoint

#set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################


###### TBM #############
set parametric 
plot [t=-2:6]0.0,t lw 5 lc "gold"
################################
   
unset output
system("pdflatex plot_s13")

