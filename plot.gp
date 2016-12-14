reset                              
set key width 2
set key left
set style fill solid

set datafile separator "," 
set title 'clz_time'
set ylabel 'time(sec)'
set xlabel 'N'

set term png enhanced font 'Verdana,10'
set output 'ilteration.png'
plot "result_clz.csv" using 1:2 title 'iteration' with points pointtype 3


set key width 2
set key left
set style fill solid

set datafile separator "," 
set title 'clz_time'
set ylabel 'time(sec)'
set xlabel 'N'

set term png enhanced font 'Verdana,10'
set output 'binary-search.png'
plot "result_clz.csv" using 1:3 title 'binary-search' with points pointtype 3


set key width 2
set key left
set style fill solid

set datafile separator "," 
set title 'clz_time'
set ylabel 'time(sec)'
set xlabel 'N'

set term png enhanced font 'Verdana,10'
set output 'binary-shift.png'
plot "result_clz.csv" using 1:4 title 'binary-shift' with points pointtype 3


set key width 2
set key left
set style fill solid

set datafile separator "," 
set title 'clz_time'
set ylabel 'time(sec)'
set xlabel 'N'

set term png enhanced font 'Verdana,10'
set output 'recursive.png'
plot "result_clz.csv" using 1:5 title 'recursive' with points pointtype 3


set key width 2
set key left
set style fill solid

set datafile separator "," 
set title 'clz_time'
set ylabel 'time(sec)'
set xlabel 'N'

set term png enhanced font 'Verdana,10'
set output 'harley.png'
plot "result_clz.csv" using 1:6 title 'harley' with points pointtype 3
