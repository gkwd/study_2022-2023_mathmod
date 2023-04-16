model SEO3
  constant Integer N = 2010;
  constant Real alpha1 = 0.66;
  constant Real alpha2 = 0.6;
  Real t = time;
  Real n(t);
initial equation
    n = 29;
equation
  der(n) = (alpha1 * t + alpha2 * t * n) * (N - n);
  annotation(experiment(StartTime = 0, StopTime = 0.4, Interval = 0.001));
end SEO3;
