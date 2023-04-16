model Harmonic2
    constant Real w = 11;
    constant Real g = 11;
    Real x;
    Real y;
    Real t = time;
initial equation
    x = 0;
    y = -1.2;
equation
  der(x) = y;
  der(y) = -w * x - g * y;
end Harmonic2;
