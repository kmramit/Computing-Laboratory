#!/usr/bin/gnuplot

set term postscript eps enhanced 24
set output 'histogram1.eps'
set title "Histograms for 1000 Data "
set key top right

set xrange [0:50]
set boxwidth 1

set style fill solid 0.5

bin_width = 1;

bin_number(x) = floor(x/bin_width);

rounded(x) = bin_width * ( bin_number(x) + 0.5 );
set xlabel "x"
set ylabel "Frequency"
plot 'bin1' using (rounded($1)):(1) smooth frequency title "binomial" with boxes lc rgb"green"
