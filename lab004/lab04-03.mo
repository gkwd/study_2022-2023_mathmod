model Harmonic3
    constant Real w = 12;
    constant Real g = 1;
    Real x;
    Real y;
    Real t = time;
initial equation
    x = 0;
    y = -1.2;
equation
  der(x) = y;
  der(y) = -w * x - g * y - 2 * cos(0.5 * t);
end Harmonic3;
