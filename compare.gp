reset                              
set key width 2
set key left
set style fill solid

set datafile separator "," 
set title 'clz_time'
set ylabel 'time(sec)'
set xlabel 'N'

set term png enhanced font 'Verdana,10'
set output 'compare.png'
plot "result_clz.csv" using 1:2 title 'iteration' with  lp pt 1 lc rgb "red",\
'' using 1:3 title 'binary-search' with lp pt 1 lc rgb "yellow",\
'' using 1:4 title 'binary-shift' with lp pt 1 lc rgb "blue",\
'' using 1:5 title 'recursive' with lp pt 1 lc rgb "green",\
'' using 1:6 title 'harley' with lp pt 1 lc rgb "purple",