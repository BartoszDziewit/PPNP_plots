set term tikz standalone size 144mm, 95mm font '\bfseries,18'
set output 'plot_s23.tex'
set nokey
unset ytics
set xrange [0.3:0.70]
set yrange [-1:6]
set grid ytics
#set grid xtics
set xtics 0.1 font ',22';
set xlabel '$\sin^2\theta_{23}$' font '\bfseries,28';
offset = 0.018

###### Nu Fit #############
# 3 sigma:
set object 1 rect from 0.408,0.65 to 0.603,1.0 fc rgb "blue"  back
set object 11 rect from 0.412,0.0 to 0.613,0.35 fc rgb "blue"  back
# 1 sigma:
set object 2 rect from 0.451-0.016,0.65 to 0.451+0.019,1.0 fc rgb "red"  back
set object 22 rect from 0.569-0.021,0.0 to 0.569+0.016,0.35 fc rgb "red"  back
# central value:
set object 3 rect from 0.451-0.0005,0.65 to 0.451+0.0005,1.0 fc rgb "green"  back
set object 33 rect from 0.569-0.0005,0.0 to 0.569+0.0005,0.35 fc rgb "green"  back

set label 11 "IO" at 0.412-offset, 0.18 center norotate front   nopoint font '\bfseries,12'
set label 111 "NO" at 0.408-offset, 0.69 center norotate front   nopoint font '\bfseries,12'

set label 1 "NuFit5.2" at graph 0.5, 0.33, 0 center norotate front   nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 4 rect from 0.434,2.65 to 0.610,3.0 fc rgb "blue"  back
set object 44 rect from 0.433,2.0 to 0.608,2.35 fc rgb "blue"  back
# 1 sigma:
set object 5 rect from 0.574-0.014,2.65 to 0.574+0.014,3.0 fc rgb "red"  back
set object 55 rect from 0.578-0.017,2.0 to 0.578+0.01,2.35 fc rgb "red"  back
# central value:
set object 6 rect from 0.574-0.0005,2.65 to 0.574+0.0005,3.0 fc rgb "green"  back
set object 66 rect from 0.578-0.0005,2.0 to 0.578+0.0005,2.35 fc rgb "green"  back

set label 22 "IO" at 0.433-offset, 2.18 center norotate front   nopoint font '\bfseries,12'
set label 222 "NO" at 0.434-offset, 2.69 center norotate front   nopoint font '\bfseries,12

set label 2 "de Salas et al (2021)" at graph 0.5, 0.62, 0 center norotate front   nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 7 rect from 0.416,4.0 to 0.599,4.35 fc rgb "blue"  back
set object 77 rect from 0.417,4.65 to 0.606,5.0 fc rgb "blue"  back
# 1 sigma:
set object 8 rect from 0.455-0.015,4.0 to 0.455+0.018,4.35 fc rgb "red"  back
set object 88 rect from 0.569-0.021,4.65 to 0.569+0.012,5.0 fc rgb "red"  back
# central value:
set object 9 rect from 0.455-0.0005,4.0 to 0.455+0.0005,4.35 fc rgb "green"  back
set object 99 rect from 0.569-0.0005,4.65 to 0.569+0.0005,5.0 fc rgb "green"  back

set label 44 "IO" at 0.416-offset, 4.18 center norotate front   nopoint font '\bfseries,12'
set label 444 "NO" at 0.417-offset, 4.69 center norotate front   nopoint font '\bfseries,12

set label 3 "Capozzi et al (2021)" at graph 0.5, 0.91, 0 center norotate front   nopoint

#set label 4 "NO" at graph 0.9, 0.91, 0 left norotate back   nopoint
################################


###### TBM #############
set parametric 
plot [t=-2:6]0.5,t lw 5 lc "gold"
################################
   
unset output
system("pdflatex plot_s23")

