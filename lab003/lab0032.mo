model Battle02
    Real x;
    Real y;
    Real a = 0.37;
    Real b = 0.675;
    Real c = 0.432;
    Real h = 0.42;
    Real t = time;
initial equation
    x = 44200;
    y = 54200;
equation
    der(x) = -a * x - b * y  + abs(2 * sin(t));
    der(y) = -c * x * y - h * y  + cos(t) + 2;
end Battle02;