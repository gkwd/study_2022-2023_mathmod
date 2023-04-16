model SEO2
  constant Integer N = 2010;
  constant Real alpha1 = 0.000066;
  constant Real alpha2 = 0.6;
  Real t = time;
  Real n(t);
initial equation
    n = 29;
equation
  der(n) = (alpha1 + alpha2 * n) * (N - n);
  annotation(experiment(StartTime = 0, StopTime = 0.02, Interval = 0.001));
end SEO2;
