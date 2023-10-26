set term tikz standalone size 144mm, 95mm font '\bfseries,18'
set output 'plot_s12.tex'
set nokey
unset ytics
set xrange [0.25:0.40]
set yrange [-1:6]
set xtics 0.05 font ',22';
#set grid xtics

offset = 0.007
set xlabel '$\sin^2\theta_{12}$' font '\bfseries,28';


###### Nu Fit #############
# 3 sigma:
set object 1 rect from 0.27,0.0 to 0.341,0.35 fc rgb "blue"  back
set object 2 rect from 0.27,0.65 to 0.341,1.0 fc rgb "blue"  back
# 1 sigma:
set object 3 rect from 0.303-0.012,0.0 to 0.303+0.012,0.35 fc rgb "red"  back
set object 33 rect from 0.303-0.012,0.65 to 0.303+0.012,1.0 fc rgb "red"  back
# central value:
set object 4 rect from 0.303-0.0005,0.0 to 0.303+0.0005,0.35 fc rgb "green"  back
set object 44 rect from 0.303-0.0005,0.65 to 0.303+0.0005,1.0 fc rgb "green"  back

set label 11 "IO" at 0.27-offset, 0.18 center norotate front   nopoint font '\bfseries,12'
set label 111 "NO" at 0.27-offset, 0.69 center norotate front   nopoint font '\bfseries,12'

set label 1 "NuFit5.2" at graph 0.5, 0.33, 0 center norotate front   nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 5 rect from 0.271,2.0 to 0.369,2.35 fc rgb "blue"  back
set object 55 rect from 0.271,2.65 to 0.369,3.0 fc rgb "blue"  back
# 1 sigma:
set object 6 rect from 0.318-0.016,2.0 to 0.318+0.016,2.35 fc rgb "red"  back
set object 66 rect from 0.318-0.016,2.65 to 0.318+0.016,3.0 fc rgb "red"  back
# central value:
set object 7 rect from 0.318-0.0005,2.0 to 0.318+0.0005,2.35 fc rgb "green"  back
set object 77 rect from 0.318-0.0005,2.65 to 0.318+0.0005,3.0 fc rgb "green"  back

set label 22 "IO" at 0.271-offset, 2.18 center norotate front   nopoint font '\bfseries,12'
set label 222 "NO" at 0.271-offset, 2.69 center norotate front   nopoint font '\bfseries,12'


set label 2 "de Salas et al (2021)" at graph 0.5, 0.62, 0 center norotate front   nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 8 rect from 0.263,4.0 to 0.345,4.35 fc rgb "blue"  back
set object 88 rect from 0.263,4.65 to 0.345,5.0 fc rgb "blue"  back
# 1 sigma:
set object 9 rect from 0.303-0.013,4.0 to 0.303+0.013,4.35 fc rgb "red"  back
set object 99 rect from 0.303-0.013,4.65 to 0.303+0.013,5.0 fc rgb "red"  back
# central value:
set object 10 rect from 0.303-0.0005,4.0 to 0.303+0.0005,4.35 fc rgb "green"  back
set object 101 rect from 0.303-0.0005,4.65 to 0.303+0.0005,5.0 fc rgb "green"  back

set label 33 "IO" at 0.263-offset, 4.18 center norotate front   nopoint font '\bfseries,12'
set label 333 "NO" at 0.263-offset, 4.69 center norotate front   nopoint font '\bfseries,12'

set label 3 "Capozzi et al (2021)" at graph 0.5, 0.91, 0 center norotate front   nopoint 

#set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################

###### TBM #############
set parametric 
plot [t=-2:6]0.33,t lw 5 lc "gold"
################################

   
unset output
system("pdflatex plot_s12")

