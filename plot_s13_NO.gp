set term tikz standalone size 144mm, 95mm font ',14'
set output 'plot_s13_NO.tex'
set nokey
unset ytics
set xrange [-0.001:0.04]
set yrange [-1:6]

set xlabel '$\sin^2\theta_{13}$';

###### Nu Fit #############
# 3 sigma:
set object 1 rect from 0.02052,0.0 to 0.02398,1.0 fc rgb "blue"  front
# 1 sigma:
set object 2 rect from 0.02225-0.00059,0.0 to 0.02225+0.00056,1.0 fc rgb "red"  front
# central value:
set object 3 rect from 0.02225-0.00005,0.0 to 0.02225+0.00005,1.0 fc rgb "green"  front

set label 1 "NuFit" at graph 0.298, 0.33, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 4 rect from 0.0200,2.0 to 0.02405,3.0 fc rgb "blue"  front
# 1 sigma:
set object 5 rect from 0.02200-0.00062,2.0 to 0.02200+0.00069,3.0 fc rgb "red"  front
# central value:
set object 6 rect from 0.02200-0.00005,2.0 to 0.02200+0.00005,3.0 fc rgb "green"  front

set label 2 "P.F. de Salas, et al." at graph 0.228, 0.62, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 7 rect from 0.0204,4.0 to 0.0244,5.0 fc rgb "blue"  front
# 1 sigma:
set object 8 rect from 0.0223-0.0006,4.0 to 0.0223+0.0007,5.0 fc rgb "red"  front
# central value:
set object 9 rect from 0.0223-0.00005,4.0 to 0.0223+0.00005,5.0 fc rgb "green"  front

set label 3 "F. Capozzi, et al." at graph 0.270, 0.91, 0 left norotate back textcolor rgb "black"  nopoint

set label 4 "NO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################


###### TBM #############
set parametric 
plot [t=-2:6]0.0,t
################################
   
unset output
system("pdflatex plot_s13_NO")

