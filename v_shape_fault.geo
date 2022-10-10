// set parameters
dpth = 6000;
sz_f = 50.0;
sz_e = 800.0;
//+
Point(1) = {0, 0, 0, sz_e};
//+
Point(2) = {8000, 0, 0, sz_e};
//+
Point(3) = {8000, 0, 8000, sz_e};
//+
Point(4) = {0, 0, 8000, sz_e};
//+
Point(5) = {3875, 0, 8000, sz_f};
//+
Point(6) = {4125, 0, 8000, sz_f};
//+
Point(7) = {4000, 0, dpth, sz_f};
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
Line(7) = {5, 7};
//+
Line(8) = {6, 7};
//+
Line(9) = {7, 1};
//+
Line(10) = {7, 2};
//+
Curve Loop(1) = {5, 7, 9, -1};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {9, 2, -10};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 4, 8, 10};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {7, -8, -6};
//+
Plane Surface(4) = {4};
//+
Extrude {0, 8000, 0} {
  Surface{1}; Surface{2}; Surface{3}; Surface{4}; 
}
//+
Physical Surface("left", 89) = {31};
//+
Physical Surface("right", 90) = {58};
//+
Physical Surface("bottom", 91) = {44};
//+
Physical Volume("surrounding", 92) = {1, 2, 3};
//+
Physical Volume("faultzone", 93) = {4};
