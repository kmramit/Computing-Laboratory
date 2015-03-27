#!/usr/bin/gnuplot

set term postscript eps enhanced color 24

set output 'graph1.eps'

set xlabel "X"
set ylabel "Probability density"

set title "Probability distribution functions"

set key top right

plot 'dataset' u 1:2 title "Gaussian" w lp, 'dataset' u 1:3 title "Poission" w lp, 'dataset' u 1:4 title "Binomial" w lp
