model Harmonic1
    constant Real w = 3.5;
    Real x;
    Real y;
    Real t = time;
initial equation
    x = 0;
    y = -1.2;
equation
  der(x) = y;
  der(y) = -w * x;
end Harmonic1;
