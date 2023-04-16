model Battle01
    Real x;
    Real y;
    Real a = 0.41;
    Real b = 0.89;
    Real c = 0.52;
    Real h = 0.61;
    Real t = time;
initial equation
    x = 61100;
    y = 45400;
equation
    der(x) = -a * x - b * y + sin(t + 7) + 1;
    der(y) = -c * x - h * y + cos(t + 6) + 1;
end Battle01;