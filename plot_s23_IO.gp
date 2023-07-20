set term tikz standalone size 144mm, 95mm font ',14'
set output 'plot_s23_IO.tex'
set nokey
unset ytics
set xrange [0.35:0.70]
set yrange [-1:6]

set xlabel '$\sin^2\theta_{23}$';

###### Nu Fit #############
# 3 sigma:
set object 1 rect from 0.412,0.0 to 0.613,1.0 fc rgb "blue"  front
# 1 sigma:
set object 2 rect from 0.569-0.021,0.0 to 0.569+0.016,1.0 fc rgb "red"  front
# central value:
set object 3 rect from 0.569-0.0005,0.0 to 0.569+0.0005,1.0 fc rgb "green"  front

set label 1 "NuFit" at graph 0.298, 0.33, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 4 rect from 0.433,2.0 to 0.608,3.0 fc rgb "blue"  front
# 1 sigma:
set object 5 rect from 0.578-0.017,2.0 to 0.578+0.01,3.0 fc rgb "red"  front
# central value:
set object 6 rect from 0.578-0.0005,2.0 to 0.578+0.0005,3.0 fc rgb "green"  front

set label 2 "P.F. de Salas, et al." at graph 0.228, 0.62, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 7 rect from 0.417,4.0 to 0.606,5.0 fc rgb "blue"  front
# 1 sigma:
set object 8 rect from 0.569-0.021,4.0 to 0.569+0.012,5.0 fc rgb "red"  front
# central value:
set object 9 rect from 0.569-0.0005,4.0 to 0.569+0.0005,5.0 fc rgb "green"  front

set label 3 "F. Capozzi, et al." at graph 0.270, 0.91, 0 left norotate back textcolor rgb "black"  nopoint

set label 4 "IO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################


###### TBM #############
set parametric 
plot [t=-2:6]0.45,t
################################
   
unset output
system("pdflatex plot_s23_IO")
