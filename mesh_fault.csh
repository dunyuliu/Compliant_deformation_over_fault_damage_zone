#!/bin/tcsh -f
conda activate fenicsproject

set length = $1
set output = $2

sed "s/.*dpth =.*/dpth = $length ;/g"  b_shape_fault.geo > $output".geo"
gmsh $output".geo" -3 -o $output".msh" -format msh2
dolfin-convert $output".msh" $output".xml"
