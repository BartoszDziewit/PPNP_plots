set term tikz standalone size 144mm, 95mm font ',14'
set output 'plot_s13_IO.tex'
set nokey
#unset ytics
set ytics right
set ytics right ("(A)" 4.5, "(B)" 2.5, "(C)" 0.5) 
set grid ytics
set xrange [-0.001:0.027]
set yrange [-1:6]

set xlabel '$\sin^2\theta_{13}$';

###### Nu Fit #############
# 3 sigma:
set object 1 rect from 0.02048,0.0 to 0.02416,1.0 fc rgb "blue"  front 
# 1 sigma:
set object 2 rect from 0.02223-0.00058,0.0 to 0.02223+0.00058,1.0 fc rgb "red"  front
# central value:
set object 3 rect from 0.02223-0.00005,0.0 to 0.02223+0.00005,1.0 fc rgb "green"  front

#set label 1 "NuFit" at graph 0.298, 0.33, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 4 rect from 0.02018,2.0 to 0.02424,3.0 fc rgb "blue"  front
# 1 sigma:
set object 5 rect from 0.02225-0.00070,2.0 to 0.02225+0.00064,3.0 fc rgb "red"  front
# central value:
set object 6 rect from 0.02225-0.00005,2.0 to 0.02225+0.00005,3.0 fc rgb "green"  front

#set label 2 "P.F. de Salas, et al." at graph 0.228, 0.62, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 7 rect from 0.0203,4.0 to 0.0244,5.0 fc rgb "blue"  front
# 1 sigma:
set object 8 rect from 0.0223-0.0006,4.0 to 0.0223+0.0006,5.0 fc rgb "red"  front
# central value:
set object 9 rect from 0.0223-0.00005,4.0 to 0.0223+0.00005,5.0 fc rgb "green"  front

#set label 3 "F. Capozzi, et al." at graph 0.270, 0.91, 0 left norotate back textcolor rgb "black"  nopoint

set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################


###### TBM #############
set parametric 
plot [t=-2:6]0.0,t
################################
   
unset output
system("pdflatex plot_s13_IO")

