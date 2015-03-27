#!/usr/bin/gnuplot

set term postscript eps enhanced color 24

set output 'graph1.eps'

set xlabel "X"
set ylabel "Probability density"

set title "Probability distribution functions"

set key top right
set label "np = 15" at 15,0.13
set label "{/Symbol m} = 15" at 17,0.12
set label "{/Symbol l} = 15" at 14,0.11
plot 'dataset' u 1:2 title "Gaussian" w lp, 'dataset' u 1:3 title "Poission" w lp, 'dataset' u 1:4 title "Binomial" w lp
