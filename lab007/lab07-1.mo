model SEO1
  constant Integer N = 2010;
  constant Real alpha1 = 0.66;
  constant Real alpha2 = 0.00006;
  Real t = time;
  Real n(t);
initial equation
    n = 29;
equation
  der(n) = (alpha1 + alpha2 * n) * (N - n);
  annotation(experiment(StartTime = 0, StopTime = 30, Interval = 0.001));
end SEO1;
