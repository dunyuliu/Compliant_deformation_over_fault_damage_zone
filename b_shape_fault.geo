// Gmsh project created on Wed Mar 30 14:17:49 2022
dpth = 3000;
sz_f = 50.0;
sz_b = 800.0;
//+
Point(1) = {0, 0, 0, sz_b};
//+
Point(2) = {8000, 0, 0, sz_b};
//+
Point(3) = {8000, 0, 8000, sz_b};
//+
Point(4) = {0, 0, 8000, sz_b};
//+
Point(5) = {3875, 0, 8000, sz_f};
//+
Point(6) = {4125, 0, 8000, sz_f};
//+
Point(7) = {3875, 0, dpth, sz_f};
//+
Point(8) = {4125, 0, dpth, sz_f};
//+
Line(1) = {4, 1};
//+
Line(2) = {1, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 6};
//+
Line(5) = {4, 5};
//+
Line(6) = {5, 6};
//+
Line(7) = {6, 8};
//+
Line(8) = {8, 7};
//+
Line(9) = {7, 5};
//+
Line(10) = {1, 7};
//+
Line(11) = {8, 2};
//+
Curve Loop(1) = {1, 10, 9, -5};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {10, -8, 11, -2};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {7, 11, 3, 4};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {9, 6, 7, 8};
//+
Plane Surface(4) = {4};
//+
Extrude {0, 8000, 0} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; 
}
//+
Physical Surface("left", 100) = {20};
//+
Physical Surface("right", 101) = {72};
//+
Physical Surface("bottom", 102) = {54};
//+
Physical Volume("surrounding", 103) = {1, 2, 3};
//+
Physical Volume("faultzone", 104) = {4};
