set term tikz standalone size 144mm, 95mm font ',14'
set output 'plot_s12_NO.tex'
set nokey
unset ytics
set xrange [0.25:0.40]
set yrange [-1:6]

set xlabel '$\sin^2\theta_{12}$';

###### Nu Fit #############
# 3 sigma:
set object 1 rect from 0.27,0.0 to 0.341,1.0 fc rgb "blue"  front
# 1 sigma:
set object 2 rect from 0.303-0.012,0.0 to 0.303+0.012,1.0 fc rgb "red"  front
# central value:
set object 3 rect from 0.303-0.0005,0.0 to 0.303+0.0005,1.0 fc rgb "green"  front

set label 1 "NuFit" at graph 0.298, 0.33, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### P.F. de Salas, et al. ######
# 3 sigma:
set object 4 rect from 0.271,2.0 to 0.369,3.0 fc rgb "blue"  front
# 1 sigma:
set object 5 rect from 0.318-0.016,2.0 to 0.318+0.016,3.0 fc rgb "red"  front
# central value:
set object 6 rect from 0.318-0.0005,2.0 to 0.318+0.0005,3.0 fc rgb "green"  front

set label 2 "P.F. de Salas, et al." at graph 0.228, 0.62, 0 left norotate back textcolor rgb "black"  nopoint
##############################

###### F. Capozzi, et al. #############
# 3 sigma:
set object 7 rect from 0.263,4.0 to 0.345,5.0 fc rgb "blue"  front
# 1 sigma:
set object 8 rect from 0.303-0.013,4.0 to 0.303+0.013,5.0 fc rgb "red"  front
# central value:
set object 9 rect from 0.303-0.0005,4.0 to 0.303+0.0005,5.0 fc rgb "green"  front

set label 3 "F. Capozzi, et al." at graph 0.270, 0.91, 0 left norotate back textcolor rgb "black"  nopoint

set label 4 "NO" at graph 0.9, 0.91, 0 left norotate back textcolor rgb "black"  nopoint
################################


###### TBM #############
set parametric 
plot [t=-2:6]0.353,t
################################
   
unset output
system("pdflatex plot_s12_NO")

